/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2019-2022 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

#include "MyViewFactory.h"
#include "MyTitleBar_CSS.h"

#include <kddockwidgets/ViewFactory.h>

#include <kddockwidgets/private/TabWidget_p.h>
#include <kddockwidgets/private/widgets/FrameWidget_p.h>
#include <kddockwidgets/private/widgets/TabBarWidget_p.h>
#include <kddockwidgets/private/widgets/TabWidgetWidget_p.h>
#include "../../src/private/multisplitter/views_qtwidgets/Separator_qtwidgets.h" // TODOm2

#include <QApplication>

// clazy:excludeall=missing-qobject-macro,ctor-missing-parent-argument

class MyTitleBar : public KDDockWidgets::TitleBarWidget
{
public:
    explicit MyTitleBar(KDDockWidgets::Frame *frame)
        : KDDockWidgets::TitleBarWidget(frame)
    {
        init();
    }

    explicit MyTitleBar(KDDockWidgets::FloatingWindow *fw)
        : KDDockWidgets::TitleBarWidget(fw)
    {
        init();
    }

    ~MyTitleBar() override;

    void init()
    {
        setFixedHeight(60);
    }

    void paintEvent(QPaintEvent *) override
    {
        QPainter p(this);
        QPen pen(Qt::black);
        const QColor focusedBackgroundColor = Qt::yellow;
        const QColor backgroundColor = focusedBackgroundColor.darker(115);
        QBrush brush(isFocused() ? focusedBackgroundColor : backgroundColor);
        pen.setWidth(4);
        p.setPen(pen);
        p.setBrush(brush);
        p.drawRect(rect().adjusted(4, 4, -4, -4));
        QFont f = qGuiApp->font();
        f.setPixelSize(30);
        f.setBold(true);
        p.setFont(f);
        p.drawText(QPoint(10, 40), title());
    }
};

MyTitleBar::~MyTitleBar() = default;

// Inheriting from SeparatorWidget instead of Separator as it handles moving and mouse cursor changing
class MySeparator : public KDDockWidgets::Views::Separator_qtwidgets
{
public:
    explicit MySeparator(KDDockWidgets::Controllers::Separator *controller, QWidget *parent)
        : KDDockWidgets::Views::Separator_qtwidgets(controller, parent)
    {
    }

    ~MySeparator() override;

    void paintEvent(QPaintEvent *) override
    {
        QPainter p(this);
        p.fillRect(QWidget::rect(), Qt::cyan);
    }
};

MySeparator::~MySeparator() = default;

KDDockWidgets::TitleBar *CustomWidgetFactory::createTitleBar(KDDockWidgets::Frame *frame) const
{
    // Feel free to return MyTitleBar_CSS here instead, but just for education purposes!
    return new MyTitleBar(frame);
}

KDDockWidgets::TitleBar *CustomWidgetFactory::createTitleBar(KDDockWidgets::FloatingWindow *fw) const
{
    // Feel free to return MyTitleBar_CSS here instead, but just for education purposes!
    return new MyTitleBar(fw);
}

KDDockWidgets::View *CustomWidgetFactory::createSeparator(KDDockWidgets::Controllers::Separator *controller, KDDockWidgets::View *parent) const
{
    return new MySeparator(controller, parent ? static_cast<KDDockWidgets::Views::View_qtwidgets *>(parent) : nullptr);
}