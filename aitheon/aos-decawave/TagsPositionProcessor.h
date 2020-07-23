#pragma once

#include <QObject>

namespace aos
{
struct Point
{
    double x;
    double y;
    double z;
};

class TagsPositionProcessor : public QObject
{
    Q_OBJECT

public:
    explicit TagsPositionProcessor( QObject* parent = nullptr );

public slots:
    void tagPos( quint64 tagId, double x, double y, double z );

private:
    // just rotate XYZ point based on X (rotate YZ along X)
    void rotatePointYZ( Point& inOut, double angle );

    // just rotate XYZ point based on Z (rotate XY along Z)
    void rotatePointXY( Point& inOut, double angle );

    // for new coordinates system: in meters
    void setOffsetForPoint( Point& inOut,
                            double xOffset = 0,
                            double yOffset = 0,
                            double zOffset = 0 );

    // for new coordinates system: pixels to meters
    void scalePoint( Point& inOut,
                     double xScale = 0.0198,
                     double yScale = 0.0198,
                     double zScale = 0.0198 );
};

} // aos
