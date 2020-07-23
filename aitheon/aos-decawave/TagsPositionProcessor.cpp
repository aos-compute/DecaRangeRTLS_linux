#include <QDebug>
#include "TagsPositionProcessor.h"

namespace aos
{

  TagsPositionProcessor::TagsPositionProcessor(QObject * parent)
  : QObject(parent)
  {
  }

  void TagsPositionProcessor::tagPos(quint64 tagId, double x, double y, double z)
  {
    qDebug() << "Received tagId: " << QString::number(tagId, 16) << "x: " << x << "y: " << y;
    // smart infrastructure call
  }
}