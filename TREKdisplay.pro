#-------------------------------------------------
#
# Project created by QtCreator 2014-05-28T11:50:00
#
#-------------------------------------------------
cache()

QT       += core gui network xml serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = DecaRangeRTLS
TEMPLATE = app
QMAKE_INFO_PLIST = Info.plist

macx: {
    LIBS += -L"/usr/local/Cellar/boost/1.72.0_3/lib"
    INCLUDEPATH += "/usr/local/Cellar/boost/1.72.0_3/include"

    LIBS += -L"/usr/local/Cellar/openssl/1.0.2r/lib"
    INCLUDEPATH += "/usr/local/Cellar/openssl/1.0.2r/include"

    LIBS += -L"/usr/local/Cellar/cpprestsdk/2.10.16/lib"
    INCLUDEPATH += "/usr/local/Cellar/cpprestsdk/2.10.16/include"
}

INCLUDEPATH += models network views util tools

INCLUDEPATH += $$PWD/armadillo-3.930.0/include

INCLUDEPATH += $$PWD/aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client
INCLUDEPATH += $$PWD/aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model
INCLUDEPATH += $$PWD/aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api

LIBS += -L$$PWD/armadillo-3.930.0/lib/ -lblas

LIBS += -L$$PWD/armadillo-3.930.0/lib/ -llapack

LIBS += -lcpprest -lssl -lcrypto -lboost_system -lboost_thread-mt -lboost_chrono-mt

SOURCES += main.cpp\
    RTLSDisplayApplication.cpp \
    views/mainwindow.cpp \
    network/RTLSClient.cpp \
    views/GraphicsView.cpp \
    views/GraphicsWidget.cpp \
    views/ViewSettingsWidget.cpp \
	views/MinimapView.cpp \
    views/connectionwidget.cpp \
    models/ViewSettings.cpp \
    tools/OriginTool.cpp \
    tools/RubberBandTool.cpp \
    tools/ScaleTool.cpp \
    util/QPropertyModel.cpp \
    network/SerialConnection.cpp \
    tools/trilateration.cpp \
    aitheon/aos-decawave/TagsPositionProcessor.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Action.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Algorithm.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Area.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/CurrentOrder.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DefinedRoute.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Device.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DeviceFilter.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DeviceSummary.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DeviceType.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/EstimatedCompletion.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/EstimatedHours.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/FileModel.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Floor.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/GetTasksQuery.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Infrastructure.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/InfrastructureLocation.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/InfrastructureTask.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Interaction.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/ItemConfig.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/ItemConfiguration.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/LocationPreferences.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/LocationPreferencesPagination.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/LoggedTime.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Pose.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/PTL.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Rotation.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Route.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/RoutePoint.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Shape.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Station.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Styling.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/System.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Task.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Translation.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/User.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/UserProfile.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/WaitInfo.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Widget.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/WidgetConfig.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/WsEventsWrapper.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/AreasApi.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/InfrastructureApi.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/InfrastructureTasksApi.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/StationsApi.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ApiClient.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ApiConfiguration.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ApiException.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/HttpContent.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/JsonBody.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ModelBase.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/MultipartFormData.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/Object.cpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/SmartInfrastructure.cpp

HEADERS  += \
    RTLSDisplayApplication.h \
	views/mainwindow.h \
    network/RTLSClient.h \
    views/GraphicsView.h \
    views/GraphicsWidget.h \
    views/ViewSettingsWidget.h \
    views/MinimapView.h \
    views/connectionwidget.h \
    models/ViewSettings.h \
    tools/AbstractTool.h \
    tools/OriginTool.h \
    tools/RubberBandTool.h \
    tools/ScaleTool.h \
    util/QPropertyModel.h \
    network/SerialConnection.h \
    tools/trilateration.h \
    aitheon/aos-decawave/TagsPositionProcessor.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Action.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Algorithm.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Area.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/CurrentOrder.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DefinedRoute.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Device.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DeviceFilter.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DeviceSummary.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/DeviceType.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/EstimatedCompletion.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/EstimatedHours.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/FileModel.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Floor.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/GetTasksQuery.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Infrastructure.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/InfrastructureLocation.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/InfrastructureTask.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Interaction.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/ItemConfig.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/ItemConfiguration.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/LocationPreferences.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/LocationPreferencesPagination.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/LoggedTime.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Pose.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/PTL.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Rotation.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Route.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/RoutePoint.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Shape.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Station.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Styling.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/System.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Task.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Translation.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/User.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/UserProfile.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/WaitInfo.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/Widget.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/WidgetConfig.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/model/WsEventsWrapper.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/AreasApi.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/InfrastructureApi.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/InfrastructureTasksApi.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/api/StationsApi.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ApiClient.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ApiConfiguration.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ApiException.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/HttpContent.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/JsonBody.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/ModelBase.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/MultipartFormData.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/cpprest-client/Object.h \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/SmartInfrastructure.hpp \
    aitheon/aros-pkg-ai-smart-infrastructure/aitheon-smart-infrastructure/SmartInfrastructureObserver.hpp

FORMS    += \
    views/mainwindow.ui \
    views/GraphicsWidget.ui \
    views/ViewSettingsWidget.ui \
    views/connectionwidget.ui


RESOURCES += \
    res/resources.qrc
