#pragma once

namespace aos
{

struct Point
{
    double x;
    double y;
    double z;
};

class Geometry
{
public:
    Geometry();
    ~Geometry() = default;

    void getTransformedPoint( Point& inOut );

private:
    Geometry( const Geometry& ) = delete;
    Geometry& operator=( const Geometry& ) = delete;

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
                     const double xScale = 0.0099,
                     const double yScale = 0.0198,
                     const double zScale = 0.0198 );

    const Point anchor0{ 495, 237, 0 };
};

} // namespace aos
