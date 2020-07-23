#pragma once

#include <QObject>

namespace aos
{
  class TagsPositionProcessor : public QObject
  {
    Q_OBJECT

  public:
    explicit TagsPositionProcessor(QObject * parent = nullptr);

  public slots:
    void tagPos(quint64 tagId, double x, double y, double z);

  private:
    
  };
}