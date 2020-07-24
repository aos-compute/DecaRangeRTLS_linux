#pragma once
#include <boost/noncopyable.hpp>

namespace aos
{

struct Point
{
    double x;
    double y;
    double z;
};

class Geometry : private boost::noncopyable
{
public:
    Geometry();
    ~Geometry() = default;

    void getTransformedPoint( Point& inOut );

private:
    // just rotate XYZ point based on X (rotate YZ along X)
    void rotatePointYZ( Point& inOut, const double angle );

    // just rotate XYZ point based on Z (rotate XY along Z)
    void rotatePointXY( Point& inOut, const double angle );

    // just rotate XYZ point based on Y (rotate XZ along Y)
    void rotatePointXZ( Point& inOut, const double angle );

    // for new coordinates system: in pixels
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

} // namespace aos
