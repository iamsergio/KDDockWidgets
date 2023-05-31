/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2023 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

#pragma once

#include "View.h"
#include "core/views/ClassicIndicatorWindowViewInterface.h"

namespace KDDockWidgets {

namespace Core {
class ClassicDropIndicatorOverlay;
}

namespace flutter {

class IndicatorWindow : public flutter::View, public Core::ClassicIndicatorWindowViewInterface
{
public:
    /// When we have proper multi-window support in flutter, we can remove the parent
    explicit IndicatorWindow(Core::ClassicDropIndicatorOverlay *, Core::View *parent);

    DropLocation hover(QPoint globalPos) override;
    void updatePositions() override;
    QPoint posForIndicator(DropLocation) const override;
    void raise() override;
    void setVisible(bool) override;
    bool isWindow() const override;
    void setGeometry(QRect) override;
    void resize(QSize) override;
    void setObjectName(const QString &) override;

    /// implemented in dart. workaround for multiinheritance binding limitations
    virtual DropLocation hover_flutter(QPoint globalPos);
    virtual void updatePositions_flutter();

private:
    Core::ClassicDropIndicatorOverlay *const classicIndicators;
};

}

}
