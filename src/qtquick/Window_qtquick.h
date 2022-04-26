/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2020-2022 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

#pragma once

#include "qtcommon/Window_qt.h"

namespace KDDockWidgets {
class DOCKS_EXPORT Window_qtquick : public Window_qt
{
public:
    using Window_qt::Window_qt;
    ~Window_qtquick();
    std::shared_ptr<ViewWrapper> rootView() const override;
    Window::Ptr transientParent() const override;
};
}