COMMENT =		graphical audio player which supports lots of formats

DISTNAME =		audacious-${VERSION}
PKGNAME =		audacious-player-${VERSION}

SHARED_LIBS +=		audcore		5.3
SHARED_LIBS +=		audtag		3.0
SHARED_LIBS +=		audqt		1.0

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv intl
WANTLIB += m

# needed for displaying icons
LIB_DEPENDS =		x11/qt5/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION} \
			LIBaudqt_VERSION=${LIBaudqt_VERSION}

.include <bsd.port.mk>
