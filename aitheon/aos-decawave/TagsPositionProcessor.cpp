#include "TagsPositionProcessor.h"
#include <QDebug>
#include <memory>

namespace aos
{

TagsPositionProcessor::TagsPositionProcessor( QObject* parent )
    : QObject( parent )
{
    m_tagsToDevicesMap[0] = "5f28039133180a0011580225";
    m_tagsToDevicesMap[1] = "5f2802ad33180a0011580219";
    
    m_smartInfrastructure = std::make_unique< aros::SmartInfrastructure >(
        "https://dev.aitheon.com",
        "/smart-infrastructure",
        "JWT "
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9."
        "eyJfaWQiOiI1ZTQ1MTAyNDVlMTYzZTAwMTBhNzIzMDYiLCJwcm9maWxlIjp7ImZpcnN0TmFtZSI6IkFydGVtIiwibG"
        "FzdE5hbWUiOiJCcmF6aG5pa292In0sImVtYWlsIjoiYWJyYXpobmlrb3ZAYWl0aGVvbi5jb20iLCJpYXQiOjE1OTU0"
        "OTgwMTEsImV4cCI6MTMzMjY4OTAwMTF9.9-4QYVniuE0INjxQTdHgFZguc3_-3QIy8589SDym08s",
        "5f1de4371525f10012290049" );
    m_smartInfrastructure->setObserver( this );
    m_geometry = std::make_unique< Geometry >();
}

void TagsPositionProcessor::onErrorOccured( const std::string& error )
{
    qDebug() << "Error occured: " << QString::fromStdString( error );
}

void TagsPositionProcessor::onTimeout()
{
    qDebug() << "API call timeout";
}

void TagsPositionProcessor::tagPos( quint64 tagId, double x, double y, double z )
{
    qDebug() << "Received tagId: " << QString::number( tagId, 16 ) << "x: " << x << "y: " << y;

    Point tag{ x, y, z };

    m_geometry->getTransformedPoint( tag );

    qDebug() << "Converted tagId: " << QString::number( tagId, 16 ) << "x: " << tag.x
             << "y: " << tag.y;

    auto deviceId = m_tagsToDevicesMap.find(tagId);
    if (deviceId != m_tagsToDevicesMap.end())
    {
        m_smartInfrastructure->changePosition( deviceId->second, tag.x, tag.y );
    }
    else
    {
        qDebug() << "Unknown Tag ID";
    }
    
}

} // namespace aos
