#pragma once

#include "Geometry.h"
#include "SmartInfrastructure.hpp"
#include <QObject>
#include <unordered_map>

namespace aos
{

class TagsPositionProcessor
    : public QObject
    , public aros::SmartInfrastructureObserver
{
    Q_OBJECT

public:
    explicit TagsPositionProcessor( QObject* parent = nullptr );

    // aros::SmartInfrastructureObserver
    void onErrorOccured( const std::string& error ) override;
    void onTimeout() override;
    void testUpdate( int x, int y )
    {
        m_smartInfrastructure->changePosition( m_tempDeviceId, x, y );
    }

public slots:
    void tagPos( quint64 tagId, double x, double y, double z );

private:
    std::string m_tempDeviceId{ "5f19572c82e83100127da74f" };
    // std::unordered_map<quint64, std::string> m_tagsToDevicesMap;
    std::unique_ptr< aros::SmartInfrastructure > m_smartInfrastructure;
    std::unique_ptr< Geometry > m_geometry;
};

} // namespace aos
