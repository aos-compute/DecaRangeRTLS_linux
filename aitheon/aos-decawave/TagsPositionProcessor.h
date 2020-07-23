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
};

} // aos
