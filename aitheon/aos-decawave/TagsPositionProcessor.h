#pragma once

#include <unordered_map>
#include <QObject>
#include "SmartInfrastructure.hpp"

namespace aos
{
struct Point
{
    double x;
    double y;
    double z;
};

class TagsPositionProcessor : public QObject, public aros::SmartInfrastructureObserver
{
    Q_OBJECT

public:
    explicit TagsPositionProcessor( QObject* parent = nullptr );

    // aros::SmartInfrastructureObserver
    void onErrorOccured(const std::string & error) override;
    void onTimeout() override;
    void testUpdate(int x, int y)
    {
        m_smartInfrastructure->changePosition(m_tempDeviceId, x, y);
    }

public slots:
    void tagPos( quint64 tagId, double x, double y, double z );

private:
    // just rotate XYZ point based on X (rotate YZ along X)
    void rotatePointYZ( Point& inOut, double angle );

    // just rotate XYZ point based on Z (rotate XY along Z)
    void rotatePointXY( Point& inOut, double angle );

private:
    std::string m_tempDeviceId{ "5f19572c82e83100127da74f" };
    //std::unordered_map<quint64, std::string> m_tagsToDevicesMap;
    std::unique_ptr<aros::SmartInfrastructure> m_smartInfrastructure;
};

} // aos
