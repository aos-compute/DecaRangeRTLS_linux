#include "Geometry.h"
#include <cmath>

namespace aos
{

Geometry::Geometry() {}

void Geometry::rotatePointYZ( Point& inOut, const double angle )
{
    double new_y, new_z;

    new_y = inOut.y * cos( angle ) - inOut.z * sin( angle );
    new_z = inOut.y * sin( angle ) + inOut.z * cos( angle );
    inOut.y = new_y;
    inOut.z = new_z;
}

void Geometry::rotatePointXY( Point& inOut, const double angle )
{
    double new_x, new_y;

    new_x = inOut.x * cos( angle ) - inOut.y * sin( angle );
    new_y = inOut.x * sin( angle ) + inOut.y * cos( angle );
    inOut.x = new_x;
    inOut.y = new_y;
}

void Geometry::rotatePointXZ( Point& inOut, const double angle )
{
    double new_x, new_z;

    new_x = inOut.x * cos( angle ) - inOut.z * sin( angle );
    new_z = inOut.x * sin( angle ) + inOut.z * cos( angle );
    inOut.x = new_x;
    inOut.z = new_z;
}

void Geometry::setOffsetForPoint( Point& inOut,
                                  const double xOffset,
                                  const double yOffset,
                                  const double zOffset )
{
    inOut.x += xOffset;
    inOut.y += yOffset;
    inOut.z += zOffset;
}

void Geometry::scalePoint( Point& inOut,
                           const double xScale,
                           const double yScale,
                           const double zScale )
{
    inOut.x *= xScale;
    inOut.y *= yScale;
    inOut.z *= zScale;
}

void Geometry::getTransformedPoint( Point& inOut )
{
    rotatePointYZ( inOut, M_PI );
    setOffsetForPoint( inOut, anchor0.x, anchor0.y );
    scalePoint( inOut );
}

} // namespace aos
