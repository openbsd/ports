# - Emulate PolkitQt with PolkitQt-1
# Once done this will define
#
#  POLKITQT_FOUND - system has Polkit-qt
#  POLKITQT_INCLUDE_DIR - the Polkit-qt include directory
#  POLKITQT_LIBRARIES - Link these to use all Polkit-qt libs
#  POLKITQT_CORE_LIBRARY - Link this to use the polkit-qt-core library only
#  POLKITQT_GUI_LIBRARY - Link this to use GUI elements in polkit-qt (polkit-qt-gui)
#  POLKITQT_AGENT_LIBRARY - Link this to use the agent wrapper in polkit-qt
#  POLKITQT_DEFINITIONS - Compiler switches required for using Polkit-qt

# Copyright (c) 2011, Vadim Zhukov <persgray@gmail.com>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

set(PolkitQt-1_FIND_VERSION ${PolkitQt_FIND_VERSION})
set(POLKITQT-1_MIN_VERSION ${POLKITQT_MIN_VERSION})
set(PolkitQt-1_FIND_QUIETLY ${PolkitQt_FIND_QUIETLY})

find_package(PolkitQt-1)

set(POLKITQT_FOUND ${POLKITQT-1_FOUND})
set(POLKITQT_INCLUDE_DIR ${POLKITQT-1_INCLUDE_DIR})
set(POLKITQT_LIBRARIES ${POLKITQT-1_LIBRARIES})
set(POLKITQT_CORE_LIBRARY ${POLKITQT-1_CORE_LIBRARY})
set(POLKITQT_GUI_LIBRARY ${POLKITQT-1_GUI_LIBRARY})
set(POLKITQT_AGENT_LIBRARY ${POLKITQT-1_AGENT_LIBRARY})
set(POLKITQT_DEFINITIONS ${POLKITQT-1_DEFINITIONS})
