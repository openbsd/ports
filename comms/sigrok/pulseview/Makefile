# $OpenBSD: Makefile,v 1.3 2018/12/13 19:53:23 sthen Exp $

COMMENT =		command-line frontend for sigrok logic analyzer
REVISION =		0

SIGROK_PROJECT =	pulseview
SIGROK_VERSION =	0.4.1

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Qt5Core Qt5Gui Qt5Svg Qt5Widgets boost_filesystem-mt
WANTLIB += boost_serialization-mt boost_system-mt
WANTLIB += c glib-2.0 glibmm-2.4 gobject-2.0 intl m sigc-2.0 sigrok
WANTLIB += sigrokcxx sigrokdecode

MODULES =		devel/cmake \
			x11/qt5
LIB_DEPENDS =		comms/sigrok/libsigrok \
			comms/sigrok/libsigrokdecode \
			devel/boost \
			devel/glib2mm \
			x11/qt5/qtsvg
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DQt5_DIR=${MODQT5_LIBDIR}/cmake/Qt5 \
			-DCMAKE_INSTALL_MANDIR=${PREFIX}/man \
			-DDISABLE_WERROR=ON

FIX_EXTRACT_PERMISSIONS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
