/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2019 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import '../TypeHelpers.dart';
import '../../Bindings.dart';
import '../../Bindings_KDDWBindingsCore.dart' as KDDWBindingsCore;
import '../../Bindings_KDDWBindingsFlutter.dart' as KDDWBindingsFlutter;
import '../../LibraryLoader.dart';

var _dylib = Library.instance().dylib;

class MainWindow extends KDDWBindingsFlutter.View {
  MainWindow.fromCppPointer(var cppPointer, [var needsAutoDelete = false])
      : super.fromCppPointer(cppPointer, needsAutoDelete) {}
  MainWindow.init() : super.init() {}
  factory MainWindow.fromCache(var cppPointer, [needsAutoDelete = false]) {
    if (KDDWBindingsCore.View.isCached(cppPointer)) {
      var instance =
          KDDWBindingsCore.View.s_dartInstanceByCppPtr[cppPointer.address];
      if (instance != null) return instance as MainWindow;
    }
    return MainWindow.fromCppPointer(cppPointer, needsAutoDelete);
  }
  String getFinalizerName() {
    return "c_KDDockWidgets__flutter__MainWindow_Finalizer";
  } //MainWindow(const QString & uniqueName, QFlags<KDDockWidgets::MainWindowOption> options, KDDockWidgets::flutter::View * parent, Qt::WindowFlags flags)

  MainWindow(String? uniqueName,
      {int options = 0,
      required KDDWBindingsFlutter.View? parent,
      int flags = 0})
      : super.init() {
    final voidstar_Func_voidstar_int_voidstar_int func = _dylib
        .lookup<
                ffi.NativeFunction<
                    voidstar_Func_voidstar_ffi_Int32_voidstar_ffi_Int32_FFI>>(
            'c_KDDockWidgets__flutter__MainWindow__constructor_QString_MainWindowOptions_View_WindowFlags')
        .asFunction();
    thisCpp = func(uniqueName?.toNativeUtf8() ?? ffi.nullptr, options,
        parent == null ? ffi.nullptr : parent.thisCpp, flags);
    KDDWBindingsCore.View.s_dartInstanceByCppPtr[thisCpp.address] = this;
    registerCallbacks();
  }
  static void activateWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::activateWindow()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.activateWindow();
  } // centerWidgetMargins() const

  Margins centerWidgetMargins() {
    final voidstar_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<voidstar_Func_voidstar_FFI>>(
            cFunctionSymbolName(506))
        .asFunction();
    ffi.Pointer<void> result = func(thisCpp);
    return Margins.fromCppPointer(result, true);
  }

  static ffi.Pointer<void> centerWidgetMargins_calledFromC(
      ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::centerWidgetMargins() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.centerWidgetMargins();
    return result.thisCpp;
  } // centralAreaGeometry() const

  Rect centralAreaGeometry() {
    final voidstar_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<voidstar_Func_voidstar_FFI>>(
            cFunctionSymbolName(507))
        .asFunction();
    ffi.Pointer<void> result = func(thisCpp);
    return Rect.fromCppPointer(result, true);
  }

  static ffi.Pointer<void> centralAreaGeometry_calledFromC(
      ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::centralAreaGeometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.centralAreaGeometry();
    return result.thisCpp;
  }

  static int close_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::close()! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.close();
    return result ? 1 : 0;
  }

  static void createPlatformWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::createPlatformWindow()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.createPlatformWindow();
  }

  static int flags_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::flags() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.flags();
    return result;
  }

  static ffi.Pointer<void> geometry_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::geometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.geometry();
    return result.thisCpp;
  }

  static void grabMouse_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::grabMouse()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.grabMouse();
  }

  static int hasFocus_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::hasFocus() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.hasFocus();
    return result ? 1 : 0;
  }

  static void hide_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::hide()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.hide();
  }

  static void init_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::init()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.init();
  }

  static int isActiveWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isActiveWindow() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isActiveWindow();
    return result ? 1 : 0;
  }

  static int isExplicitlyHidden_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isExplicitlyHidden() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isExplicitlyHidden();
    return result ? 1 : 0;
  }

  static int isMaximized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isMaximized() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMaximized();
    return result ? 1 : 0;
  }

  static int isMinimized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isMinimized() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMinimized();
    return result ? 1 : 0;
  }

  static int isMounted_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isMounted() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMounted();
    return result ? 1 : 0;
  }

  static int isNull_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isNull() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isNull();
    return result ? 1 : 0;
  }

  static int isRootView_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isRootView() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isRootView();
    return result ? 1 : 0;
  }

  static int isVisible_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isVisible() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isVisible();
    return result ? 1 : 0;
  }

  static ffi.Pointer<void> mapFromGlobal_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> globalPt) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::mapFromGlobal(KDDockWidgets::Point globalPt) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapFromGlobal(Point.fromCppPointer(globalPt));
    return result.thisCpp;
  }

  static ffi.Pointer<void> mapTo_calledFromC(ffi.Pointer<void> thisCpp,
      ffi.Pointer<void>? parent, ffi.Pointer<void> pos) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::mapTo(KDDockWidgets::Core::View * parent, KDDockWidgets::Point pos) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapTo(
        (parent == null || parent.address == 0)
            ? null
            : KDDWBindingsCore.View.fromCppPointer(parent),
        Point.fromCppPointer(pos));
    return result.thisCpp;
  }

  static ffi.Pointer<void> mapToGlobal_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> localPt) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::mapToGlobal(KDDockWidgets::Point localPt) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapToGlobal(Point.fromCppPointer(localPt));
    return result.thisCpp;
  }

  static ffi.Pointer<void> maxSizeHint_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::maxSizeHint() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.maxSizeHint();
    return result.thisCpp;
  }

  static ffi.Pointer<void> minSize_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::minSize() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.minSize();
    return result.thisCpp;
  }

  static void move_2_calledFromC(ffi.Pointer<void> thisCpp, int x, int y) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::move(int x, int y)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.move_2(x, y);
  }

  static ffi.Pointer<void> normalGeometry_calledFromC(
      ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::normalGeometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.normalGeometry();
    return result.thisCpp;
  }

  static void onChildAdded_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onChildAdded(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onChildAdded((childView == null || childView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void onChildRemoved_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onChildRemoved(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onChildRemoved((childView == null || childView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void onChildVisibilityChanged_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onChildVisibilityChanged(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onChildVisibilityChanged(
        (childView == null || childView.address == 0)
            ? null
            : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void onGeometryChanged_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onGeometryChanged()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onGeometryChanged();
  }

  static void onRebuildRequested_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onRebuildRequested()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onRebuildRequested();
  }

  static int onResize_2_calledFromC(ffi.Pointer<void> thisCpp, int h, int w) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onResize(int h, int w)! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.onResize_2(h, w);
    return result ? 1 : 0;
  }

  static void raise_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raise()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raise();
  }

  static void raiseAndActivate_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raiseAndActivate()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raiseAndActivate();
  }

  static void raiseChild_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raiseChild(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raiseChild((childView == null || childView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void raiseWindow_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? rootView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raiseWindow(KDDockWidgets::Core::View * rootView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raiseWindow((rootView == null || rootView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(rootView));
  }

  static void releaseKeyboard_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::releaseKeyboard()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.releaseKeyboard();
  }

  static void releaseMouse_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::releaseMouse()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.releaseMouse();
  } // setContentsMargins(int left, int top, int right, int bottom)

  setContentsMargins(int left, int top, int right, int bottom) {
    final void_Func_voidstar_int_int_int_int func = _dylib
        .lookup<
                ffi.NativeFunction<
                    void_Func_voidstar_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI>>(
            cFunctionSymbolName(510))
        .asFunction();
    func(thisCpp, left, top, right, bottom);
  }

  static void setContentsMargins_calledFromC(
      ffi.Pointer<void> thisCpp, int left, int top, int right, int bottom) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setContentsMargins(int left, int top, int right, int bottom)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setContentsMargins(left, top, right, bottom);
  }

  static void setCursor_calledFromC(ffi.Pointer<void> thisCpp, int shape) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setCursor(Qt::CursorShape shape)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setCursor(shape);
  }

  static void setFixedHeight_calledFromC(ffi.Pointer<void> thisCpp, int h) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setFixedHeight(int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setFixedHeight(h);
  }

  static void setFixedWidth_calledFromC(ffi.Pointer<void> thisCpp, int w) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setFixedWidth(int w)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setFixedWidth(w);
  }

  static void setGeometry_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> geometry) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setGeometry(KDDockWidgets::Rect geometry)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setGeometry(Rect.fromCppPointer(geometry));
  }

  static void setHeight_calledFromC(ffi.Pointer<void> thisCpp, int h) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setHeight(int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setHeight(h);
  }

  static void setMaximumSize_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> sz) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setMaximumSize(KDDockWidgets::Size sz)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMaximumSize(Size.fromCppPointer(sz));
  }

  static void setMinimumSize_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> sz) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setMinimumSize(KDDockWidgets::Size sz)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMinimumSize(Size.fromCppPointer(sz));
  }

  static void setMouseTracking_calledFromC(
      ffi.Pointer<void> thisCpp, int enable) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setMouseTracking(bool enable)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMouseTracking(enable != 0);
  }

  static void setParent_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? parent) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setParent(KDDockWidgets::Core::View * parent)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setParent((parent == null || parent.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(parent));
  }

  static void setSize_2_calledFromC(ffi.Pointer<void> thisCpp, int w, int h) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setSize(int w, int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setSize_2(w, h);
  }

  static void setViewName_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? name) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setViewName(const QString & name)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setViewName(QString.fromCppPointer(name).toDartString());
  }

  static void setVisible_calledFromC(ffi.Pointer<void> thisCpp, int visible) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setVisible(bool visible)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setVisible(visible != 0);
  }

  static void setWidth_calledFromC(ffi.Pointer<void> thisCpp, int w) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setWidth(int w)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWidth(w);
  }

  static void setWindowOpacity_calledFromC(
      ffi.Pointer<void> thisCpp, double v) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setWindowOpacity(double v)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWindowOpacity(v);
  }

  static void setWindowTitle_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? title) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setWindowTitle(const QString & title)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWindowTitle(QString.fromCppPointer(title).toDartString());
  }

  static void setZOrder_calledFromC(ffi.Pointer<void> thisCpp, int z) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setZOrder(int z)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setZOrder(z);
  }

  static void show_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::show()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.show();
  }

  static void showMaximized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::showMaximized()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showMaximized();
  }

  static void showMinimized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::showMinimized()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showMinimized();
  }

  static void showNormal_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::showNormal()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showNormal();
  }

  static void update_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::update()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.update();
  }

  static ffi.Pointer<void> viewName_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::viewName() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.viewName();
    return result.thisCpp;
  }

  static int zOrder_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::zOrder() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.zOrder();
    return result;
  }

  void release() {
    final void_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<void_Func_voidstar_FFI>>(
            'c_KDDockWidgets__flutter__MainWindow__destructor')
        .asFunction();
    func(thisCpp);
  }

  String cFunctionSymbolName(int methodId) {
    switch (methodId) {
      case 345:
        return "c_KDDockWidgets__flutter__MainWindow__activateWindow";
      case 506:
        return "c_KDDockWidgets__flutter__MainWindow__centerWidgetMargins";
      case 507:
        return "c_KDDockWidgets__flutter__MainWindow__centralAreaGeometry";
      case 355:
        return "c_KDDockWidgets__flutter__MainWindow__close";
      case 357:
        return "c_KDDockWidgets__flutter__MainWindow__createPlatformWindow";
      case 363:
        return "c_KDDockWidgets__flutter__MainWindow__flags";
      case 364:
        return "c_KDDockWidgets__flutter__MainWindow__geometry";
      case 365:
        return "c_KDDockWidgets__flutter__MainWindow__grabMouse";
      case 368:
        return "c_KDDockWidgets__flutter__MainWindow__hasFocus";
      case 370:
        return "c_KDDockWidgets__flutter__MainWindow__hide";
      case 372:
        return "c_KDDockWidgets__flutter__MainWindow__init";
      case 374:
        return "c_KDDockWidgets__flutter__MainWindow__isActiveWindow";
      case 375:
        return "c_KDDockWidgets__flutter__MainWindow__isExplicitlyHidden";
      case 378:
        return "c_KDDockWidgets__flutter__MainWindow__isMaximized";
      case 379:
        return "c_KDDockWidgets__flutter__MainWindow__isMinimized";
      case 453:
        return "c_KDDockWidgets__flutter__MainWindow__isMounted";
      case 380:
        return "c_KDDockWidgets__flutter__MainWindow__isNull";
      case 381:
        return "c_KDDockWidgets__flutter__MainWindow__isRootView";
      case 382:
        return "c_KDDockWidgets__flutter__MainWindow__isVisible";
      case 383:
        return "c_KDDockWidgets__flutter__MainWindow__mapFromGlobal_Point";
      case 384:
        return "c_KDDockWidgets__flutter__MainWindow__mapTo_View_Point";
      case 385:
        return "c_KDDockWidgets__flutter__MainWindow__mapToGlobal_Point";
      case 386:
        return "c_KDDockWidgets__flutter__MainWindow__maxSizeHint";
      case 387:
        return "c_KDDockWidgets__flutter__MainWindow__minSize";
      case 391:
        return "c_KDDockWidgets__flutter__MainWindow__move_int_int";
      case 392:
        return "c_KDDockWidgets__flutter__MainWindow__normalGeometry";
      case 456:
        return "c_KDDockWidgets__flutter__MainWindow__onChildAdded_View";
      case 457:
        return "c_KDDockWidgets__flutter__MainWindow__onChildRemoved_View";
      case 458:
        return "c_KDDockWidgets__flutter__MainWindow__onChildVisibilityChanged_View";
      case 460:
        return "c_KDDockWidgets__flutter__MainWindow__onGeometryChanged";
      case 462:
        return "c_KDDockWidgets__flutter__MainWindow__onRebuildRequested";
      case 394:
        return "c_KDDockWidgets__flutter__MainWindow__onResize_int_int";
      case 396:
        return "c_KDDockWidgets__flutter__MainWindow__raise";
      case 397:
        return "c_KDDockWidgets__flutter__MainWindow__raiseAndActivate";
      case 465:
        return "c_KDDockWidgets__flutter__MainWindow__raiseChild_View";
      case 466:
        return "c_KDDockWidgets__flutter__MainWindow__raiseWindow_View";
      case 399:
        return "c_KDDockWidgets__flutter__MainWindow__releaseKeyboard";
      case 400:
        return "c_KDDockWidgets__flutter__MainWindow__releaseMouse";
      case 510:
        return "c_KDDockWidgets__flutter__MainWindow__setContentsMargins_int_int_int_int";
      case 404:
        return "c_KDDockWidgets__flutter__MainWindow__setCursor_CursorShape";
      case 405:
        return "c_KDDockWidgets__flutter__MainWindow__setFixedHeight_int";
      case 406:
        return "c_KDDockWidgets__flutter__MainWindow__setFixedWidth_int";
      case 407:
        return "c_KDDockWidgets__flutter__MainWindow__setGeometry_Rect";
      case 408:
        return "c_KDDockWidgets__flutter__MainWindow__setHeight_int";
      case 409:
        return "c_KDDockWidgets__flutter__MainWindow__setMaximumSize_Size";
      case 410:
        return "c_KDDockWidgets__flutter__MainWindow__setMinimumSize_Size";
      case 411:
        return "c_KDDockWidgets__flutter__MainWindow__setMouseTracking_bool";
      case 412:
        return "c_KDDockWidgets__flutter__MainWindow__setParent_View";
      case 414:
        return "c_KDDockWidgets__flutter__MainWindow__setSize_int_int";
      case 415:
        return "c_KDDockWidgets__flutter__MainWindow__setViewName_QString";
      case 416:
        return "c_KDDockWidgets__flutter__MainWindow__setVisible_bool";
      case 417:
        return "c_KDDockWidgets__flutter__MainWindow__setWidth_int";
      case 418:
        return "c_KDDockWidgets__flutter__MainWindow__setWindowOpacity_double";
      case 419:
        return "c_KDDockWidgets__flutter__MainWindow__setWindowTitle_QString";
      case 420:
        return "c_KDDockWidgets__flutter__MainWindow__setZOrder_int";
      case 421:
        return "c_KDDockWidgets__flutter__MainWindow__show";
      case 422:
        return "c_KDDockWidgets__flutter__MainWindow__showMaximized";
      case 423:
        return "c_KDDockWidgets__flutter__MainWindow__showMinimized";
      case 424:
        return "c_KDDockWidgets__flutter__MainWindow__showNormal";
      case 426:
        return "c_KDDockWidgets__flutter__MainWindow__update";
      case 427:
        return "c_KDDockWidgets__flutter__MainWindow__viewName";
      case 431:
        return "c_KDDockWidgets__flutter__MainWindow__zOrder";
    }
    return super.cFunctionSymbolName(methodId);
  }

  static String methodNameFromId(int methodId) {
    switch (methodId) {
      case 345:
        return "activateWindow";
      case 506:
        return "centerWidgetMargins";
      case 507:
        return "centralAreaGeometry";
      case 355:
        return "close";
      case 357:
        return "createPlatformWindow";
      case 363:
        return "flags";
      case 364:
        return "geometry";
      case 365:
        return "grabMouse";
      case 368:
        return "hasFocus";
      case 370:
        return "hide";
      case 372:
        return "init";
      case 374:
        return "isActiveWindow";
      case 375:
        return "isExplicitlyHidden";
      case 378:
        return "isMaximized";
      case 379:
        return "isMinimized";
      case 453:
        return "isMounted";
      case 380:
        return "isNull";
      case 381:
        return "isRootView";
      case 382:
        return "isVisible";
      case 383:
        return "mapFromGlobal";
      case 384:
        return "mapTo";
      case 385:
        return "mapToGlobal";
      case 386:
        return "maxSizeHint";
      case 387:
        return "minSize";
      case 391:
        return "move_2";
      case 392:
        return "normalGeometry";
      case 456:
        return "onChildAdded";
      case 457:
        return "onChildRemoved";
      case 458:
        return "onChildVisibilityChanged";
      case 460:
        return "onGeometryChanged";
      case 462:
        return "onRebuildRequested";
      case 394:
        return "onResize_2";
      case 396:
        return "raise";
      case 397:
        return "raiseAndActivate";
      case 465:
        return "raiseChild";
      case 466:
        return "raiseWindow";
      case 399:
        return "releaseKeyboard";
      case 400:
        return "releaseMouse";
      case 510:
        return "setContentsMargins";
      case 404:
        return "setCursor";
      case 405:
        return "setFixedHeight";
      case 406:
        return "setFixedWidth";
      case 407:
        return "setGeometry";
      case 408:
        return "setHeight";
      case 409:
        return "setMaximumSize";
      case 410:
        return "setMinimumSize";
      case 411:
        return "setMouseTracking";
      case 412:
        return "setParent";
      case 414:
        return "setSize_2";
      case 415:
        return "setViewName";
      case 416:
        return "setVisible";
      case 417:
        return "setWidth";
      case 418:
        return "setWindowOpacity";
      case 419:
        return "setWindowTitle";
      case 420:
        return "setZOrder";
      case 421:
        return "show";
      case 422:
        return "showMaximized";
      case 423:
        return "showMinimized";
      case 424:
        return "showNormal";
      case 426:
        return "update";
      case 427:
        return "viewName";
      case 431:
        return "zOrder";
    }
    throw Error();
  }

  void registerCallbacks() {
    assert(thisCpp != null);
    final RegisterMethodIsReimplementedCallback registerCallback = _dylib
        .lookup<ffi.NativeFunction<RegisterMethodIsReimplementedCallback_FFI>>(
            'c_KDDockWidgets__flutter__MainWindow__registerVirtualMethodCallback')
        .asFunction();
    final callback345 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.activateWindow_calledFromC);
    registerCallback(thisCpp, callback345, 345);
    final callback506 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.MainWindow.centerWidgetMargins_calledFromC);
    registerCallback(thisCpp, callback506, 506);
    final callback507 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.MainWindow.centralAreaGeometry_calledFromC);
    registerCallback(thisCpp, callback507, 507);
    const callbackExcept355 = 0;
    final callback355 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.close_calledFromC, callbackExcept355);
    registerCallback(thisCpp, callback355, 355);
    final callback357 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsCore.View.createPlatformWindow_calledFromC);
    registerCallback(thisCpp, callback357, 357);
    const callbackExcept363 = 0;
    final callback363 = ffi.Pointer.fromFunction<int_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.flags_calledFromC, callbackExcept363);
    registerCallback(thisCpp, callback363, 363);
    final callback364 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.geometry_calledFromC);
    registerCallback(thisCpp, callback364, 364);
    final callback365 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.grabMouse_calledFromC);
    registerCallback(thisCpp, callback365, 365);
    const callbackExcept368 = 0;
    final callback368 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.hasFocus_calledFromC, callbackExcept368);
    registerCallback(thisCpp, callback368, 368);
    final callback370 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.hide_calledFromC);
    registerCallback(thisCpp, callback370, 370);
    final callback372 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsCore.View.init_calledFromC);
    registerCallback(thisCpp, callback372, 372);
    const callbackExcept374 = 0;
    final callback374 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isActiveWindow_calledFromC, callbackExcept374);
    registerCallback(thisCpp, callback374, 374);
    const callbackExcept375 = 0;
    final callback375 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isExplicitlyHidden_calledFromC,
        callbackExcept375);
    registerCallback(thisCpp, callback375, 375);
    const callbackExcept378 = 0;
    final callback378 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isMaximized_calledFromC, callbackExcept378);
    registerCallback(thisCpp, callback378, 378);
    const callbackExcept379 = 0;
    final callback379 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isMinimized_calledFromC, callbackExcept379);
    registerCallback(thisCpp, callback379, 379);
    const callbackExcept453 = 0;
    final callback453 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isMounted_calledFromC, callbackExcept453);
    registerCallback(thisCpp, callback453, 453);
    const callbackExcept380 = 0;
    final callback380 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsCore.View.isNull_calledFromC, callbackExcept380);
    registerCallback(thisCpp, callback380, 380);
    const callbackExcept381 = 0;
    final callback381 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isRootView_calledFromC, callbackExcept381);
    registerCallback(thisCpp, callback381, 381);
    const callbackExcept382 = 0;
    final callback382 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isVisible_calledFromC, callbackExcept382);
    registerCallback(thisCpp, callback382, 382);
    final callback383 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.mapFromGlobal_calledFromC);
    registerCallback(thisCpp, callback383, 383);
    final callback384 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.mapTo_calledFromC);
    registerCallback(thisCpp, callback384, 384);
    final callback385 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.mapToGlobal_calledFromC);
    registerCallback(thisCpp, callback385, 385);
    final callback386 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.maxSizeHint_calledFromC);
    registerCallback(thisCpp, callback386, 386);
    final callback387 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.minSize_calledFromC);
    registerCallback(thisCpp, callback387, 387);
    final callback391 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.move_2_calledFromC);
    registerCallback(thisCpp, callback391, 391);
    final callback392 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.normalGeometry_calledFromC);
    registerCallback(thisCpp, callback392, 392);
    final callback456 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.onChildAdded_calledFromC);
    registerCallback(thisCpp, callback456, 456);
    final callback457 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.onChildRemoved_calledFromC);
    registerCallback(thisCpp, callback457, 457);
    final callback458 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.onChildVisibilityChanged_calledFromC);
    registerCallback(thisCpp, callback458, 458);
    final callback460 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.onGeometryChanged_calledFromC);
    registerCallback(thisCpp, callback460, 460);
    final callback462 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.onRebuildRequested_calledFromC);
    registerCallback(thisCpp, callback462, 462);
    const callbackExcept394 = 0;
    final callback394 =
        ffi.Pointer.fromFunction<bool_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            KDDWBindingsCore.View.onResize_2_calledFromC, callbackExcept394);
    registerCallback(thisCpp, callback394, 394);
    final callback396 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.raise_calledFromC);
    registerCallback(thisCpp, callback396, 396);
    final callback397 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.raiseAndActivate_calledFromC);
    registerCallback(thisCpp, callback397, 397);
    final callback465 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.raiseChild_calledFromC);
    registerCallback(thisCpp, callback465, 465);
    final callback466 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.raiseWindow_calledFromC);
    registerCallback(thisCpp, callback466, 466);
    final callback399 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.releaseKeyboard_calledFromC);
    registerCallback(thisCpp, callback399, 399);
    final callback400 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.releaseMouse_calledFromC);
    registerCallback(thisCpp, callback400, 400);
    final callback510 = ffi.Pointer.fromFunction<
            void_Func_voidstar_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI>(
        KDDWBindingsFlutter.MainWindow.setContentsMargins_calledFromC);
    registerCallback(thisCpp, callback510, 510);
    final callback404 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setCursor_calledFromC);
    registerCallback(thisCpp, callback404, 404);
    final callback405 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setFixedHeight_calledFromC);
    registerCallback(thisCpp, callback405, 405);
    final callback406 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setFixedWidth_calledFromC);
    registerCallback(thisCpp, callback406, 406);
    final callback407 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setGeometry_calledFromC);
    registerCallback(thisCpp, callback407, 407);
    final callback408 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setHeight_calledFromC);
    registerCallback(thisCpp, callback408, 408);
    final callback409 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setMaximumSize_calledFromC);
    registerCallback(thisCpp, callback409, 409);
    final callback410 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setMinimumSize_calledFromC);
    registerCallback(thisCpp, callback410, 410);
    final callback411 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int8_FFI>(
            KDDWBindingsFlutter.View.setMouseTracking_calledFromC);
    registerCallback(thisCpp, callback411, 411);
    final callback412 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setParent_calledFromC);
    registerCallback(thisCpp, callback412, 412);
    final callback414 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setSize_2_calledFromC);
    registerCallback(thisCpp, callback414, 414);
    final callback415 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setViewName_calledFromC);
    registerCallback(thisCpp, callback415, 415);
    final callback416 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int8_FFI>(
            KDDWBindingsFlutter.View.setVisible_calledFromC);
    registerCallback(thisCpp, callback416, 416);
    final callback417 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setWidth_calledFromC);
    registerCallback(thisCpp, callback417, 417);
    final callback418 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Double_FFI>(
            KDDWBindingsFlutter.View.setWindowOpacity_calledFromC);
    registerCallback(thisCpp, callback418, 418);
    final callback419 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setWindowTitle_calledFromC);
    registerCallback(thisCpp, callback419, 419);
    final callback420 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setZOrder_calledFromC);
    registerCallback(thisCpp, callback420, 420);
    final callback421 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.show_calledFromC);
    registerCallback(thisCpp, callback421, 421);
    final callback422 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.showMaximized_calledFromC);
    registerCallback(thisCpp, callback422, 422);
    final callback423 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.showMinimized_calledFromC);
    registerCallback(thisCpp, callback423, 423);
    final callback424 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.showNormal_calledFromC);
    registerCallback(thisCpp, callback424, 424);
    final callback426 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.update_calledFromC);
    registerCallback(thisCpp, callback426, 426);
    final callback427 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.viewName_calledFromC);
    registerCallback(thisCpp, callback427, 427);
    const callbackExcept431 = 0;
    final callback431 = ffi.Pointer.fromFunction<int_Func_voidstar_FFI>(
        KDDWBindingsCore.View.zOrder_calledFromC, callbackExcept431);
    registerCallback(thisCpp, callback431, 431);
  }
}
