#include "TagsPositionProcessor.h"
#include <QDebug>
#include <cmath>

namespace aos
{

TagsPositionProcessor::TagsPositionProcessor( QObject* parent )
    : QObject( parent )
{
}

void TagsPositionProcessor::rotatePointYZ( Point& inOut, double angle )
{
    double new_y, new_z;

    new_y = inOut.y * cos( angle ) - inOut.z * sin( angle );
    new_z = inOut.y * sin( angle ) + inOut.z * cos( angle );
    inOut.y = new_y;
    inOut.z = new_z;
}

void TagsPositionProcessor::rotatePointXY( Point& inOut, double angle )
{
    double new_x, new_y;

    new_x = inOut.x * cos( angle ) - inOut.y * sin( angle );
    new_y = inOut.x * sin( angle ) + inOut.y * cos( angle );
    inOut.x = new_x;
    inOut.y = new_y;
}

void TagsPositionProcessor::setOffsetForPoint( Point& inOut,
                                               double xOffset,
                                               double yOffset,
                                               double zOffset )
{
    inOut.x += xOffset;
    inOut.y += yOffset;
    inOut.z += zOffset;
}

void TagsPositionProcessor::scalePoint( Point& inOut, double xScale, double yScale, double zScale )
{
    inOut.x *= xScale;
    inOut.y *= yScale;
    inOut.z *= zScale;
}

void TagsPositionProcessor::tagPos( quint64 tagId, double x, double y, double z )
{
    qDebug() << "Received tagId: " << QString::number( tagId, 16 ) << "x: " << x << "y: " << y;

    Point tag{ x, y, z };
    rotatePointYZ( tag, M_PI );
    scalePoint( tag );
    setOffsetForPoint( tag );

    qDebug() << "Converted tagId: " << QString::number( tagId, 16 ) << "x: " << x << "y: " << y;

    // smart infrastructure call
}
}
