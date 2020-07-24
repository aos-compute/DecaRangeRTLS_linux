#include "TagsPositionProcessor.h"
#include <QDebug>
#include <cmath>

namespace aos
{

TagsPositionProcessor::TagsPositionProcessor( QObject* parent )
    : QObject( parent )
{
    m_smartInfrastructure = std::make_unique<aros::SmartInfrastructure>(
        "https://dev.aitheon.com",
        "/smart-infrastructure",
        "JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1ZTQ1MTAyNDVlMTYzZTAwMTBhNzIzMDYiLCJwcm9maWxlIjp7ImZpcnN0TmFtZSI6IkFydGVtIiwibGFzdE5hbWUiOiJCcmF6aG5pa292In0sImVtYWlsIjoiYWJyYXpobmlrb3ZAYWl0aGVvbi5jb20iLCJpYXQiOjE1OTU0OTgwMTEsImV4cCI6MTMzMjY4OTAwMTF9.9-4QYVniuE0INjxQTdHgFZguc3_-3QIy8589SDym08s",
        "5e4512f85e163e0010a72314"
    );
    m_smartInfrastructure->setObserver(this);
}

void TagsPositionProcessor::onErrorOccured(const std::string & error)
{
    qDebug() << "Error occured: " << QString::fromStdString(error);
}

void TagsPositionProcessor::onTimeout()
{
    qDebug() << "API call timeout";
}

void TagsPositionProcessor::rotatePointYZ( Point& inOut, const double angle )
{
    double new_y, new_z;

    new_y = inOut.y * cos( angle ) - inOut.z * sin( angle );
    new_z = inOut.y * sin( angle ) + inOut.z * cos( angle );
    inOut.y = new_y;
    inOut.z = new_z;
}

void TagsPositionProcessor::rotatePointXY( Point& inOut, const double angle )
{
    double new_x, new_y;

    new_x = inOut.x * cos( angle ) - inOut.y * sin( angle );
    new_y = inOut.x * sin( angle ) + inOut.y * cos( angle );
    inOut.x = new_x;
    inOut.y = new_y;
}

void TagsPositionProcessor::setOffsetForPoint( Point& inOut,
                                               const double xOffset,
                                               const double yOffset,
                                               const double zOffset )
{
    inOut.x += xOffset;
    inOut.y += yOffset;
    inOut.z += zOffset;
}

void TagsPositionProcessor::scalePoint( Point& inOut,
                                        const double xScale,
                                        const double yScale,
                                        const double zScale )
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

    qDebug() << "Converted tagId: " << QString::number( tagId, 16 ) << "x: " << tag.x
             << "y: " << tag.y;

    m_smartInfrastructure->changePosition(m_tempDeviceId, abs(tag.x * 100), abs(tag.y * 100));
}
}
