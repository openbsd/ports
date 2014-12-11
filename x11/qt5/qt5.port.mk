# $OpenBSD: qt5.port.mk,v 1.5 2014/12/11 17:39:03 zhuk Exp $

# This fragment defines MODQT_* variables to make it easier to substitute
# qt4/qt5 in a port.
MODQT_OVERRIDE_UIC ?= Yes
MODQT5_OVERRIDE_UIC ?= ${MODQT_OVERRIDE_UIC}

MODQT5_LIBDIR =	${LOCALBASE}/lib/qt5
MODQT_LIBDIR ?= ${MODQT5_LIBDIR}
MODQT5_INCDIR =	${LOCALBASE}/include/X11/qt5
MODQT_INCDIR ?= ${MODQT5_INCDIR}
.if ${CONFIGURE_STYLE:Mcmake}
MODQT5_CONFIGURE_ARGS =	--with-qt-includes=${MODQT5_INCDIR} \
			--with-qt-libraries=${MODQT5_LIBDIR}
.endif
MODQT_CONFIGURE_ARGS ?= ${MODQT5_CONFIGURE_ARGS}
_MODQT5_SETUP =	MOC=${MODQT5_MOC} \
		MODQT_INCDIR=${MODQT5_INCDIR} \
		MODQT_LIBDIR=${MODQT5_LIBDIR}
.if ${MODQT5_OVERRIDE_UIC:L} == "yes"
_MODQT5_SETUP +=UIC=${MODQT5_UIC}
.endif

# may be needed to find plugins
MODQT5_MOC =	${LOCALBASE}/bin/moc-qt5
MODQT_MOC ?=	${MODQT5_MOC}
MODQT5_UIC =	${LOCALBASE}/bin/uic-qt5
MODQT_UIC ?=	${MODQT5_UIC}
MODQT5_QTDIR =	${LOCALBASE}/lib/qt5
MODQT_QTDIR ?=	${MODQT5_QTDIR}

_MODQT5_CMAKE_PKGS = \
	Qt5 \
	Qt5Bluetooth \
	Qt5Concurrent \
	Qt5Core \
	Qt5DBus \
	Qt5Declarative \
	Qt5Designer \
	Qt5Enginio \
	Qt5Gui \
	Qt5Help \
	Qt5LinguistTools \
	Qt5Multimedia \
	Qt5MultimediaWidgets \
	Qt5Network \
	Qt5Nfc \
	Qt5OpenGL \
	Qt5OpenGLExtensions \
	Qt5Positioning \
	Qt5PrintSupport \
	Qt5Qml \
	Qt5Quick \
	Qt5QuickTest \
	Qt5QuickWidgets \
	Qt5Script \
	Qt5ScriptTools \
	Qt5Sensors \
	Qt5SerialPort \
	Qt5Sql \
	Qt5Svg \
	Qt5Test \
	Qt5UiTools \
	Qt5WebKit \
	Qt5WebKitWidgets \
	Qt5WebSockets \
	Qt5Widgets \
	Qt5X11Extras \
	Qt5Xml \
	Qt5XmlPatterns
.for _p in ${_MODQT5_CMAKE_PKGS}
_MODQT5_SETUP +=	${_p}_DIR=${MODQT5_LIBDIR}/cmake
.endfor

MODQT5_LIB_DEPENDS = 	x11/qt5
MODQT_LIB_DEPENDS ?= 	${MODQT5_LIB_DEPENDS}
LIB_DEPENDS += 		${MODQT5_LIB_DEPENDS}

CONFIGURE_ENV +=${_MODQT5_SETUP}
MAKE_ENV +=	${_MODQT5_SETUP}
MAKE_FLAGS +=	${_MODQT5_SETUP}

MODQT5_USE_GCC4_MODULE ?=	Yes
.if ${MODQT5_USE_GCC4_MODULE} == "Yes"
  MODULES +=		gcc4
  MODGCC4_LANGS +=	c++
  MODGCC4_ARCHS ?=	*
.endif
