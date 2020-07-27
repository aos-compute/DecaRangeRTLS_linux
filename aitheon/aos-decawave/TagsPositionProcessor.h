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

public slots:
    void tagPos( quint64 tagId, double x, double y, double z );

private:
    std::unordered_map<quint64, std::string> m_tagsToDevicesMap;
    std::unique_ptr< aros::SmartInfrastructure > m_smartInfrastructure;
    std::unique_ptr< Geometry > m_geometry;
};

} // namespace aos
