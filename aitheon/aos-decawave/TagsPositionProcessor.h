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
    void rotatePointYZ( Point& inOut, const double angle );

    // just rotate XYZ point based on Z (rotate XY along Z)
    void rotatePointXY( Point& inOut, const double angle );

    // for new coordinates system: in meters
    void setOffsetForPoint( Point& inOut,
                            const double xOffset = 0,
                            const double yOffset = 0,
                            const double zOffset = 0 );

    // for new coordinates system: pixels to meters
    void scalePoint( Point& inOut,
                     const double xScale = 0.0198,
                     const double yScale = 0.0198,
                     const double zScale = 0.0198 );
};

} // aos
