COMMENT =		graphical audio player which supports lots of formats

DISTNAME =		audacious-${VERSION}
PKGNAME =		audacious-player-${VERSION}
REVISION =		2

SHARED_LIBS +=		audcore		5.2 	# 5.3
SHARED_LIBS +=		audtag		3.0	# 3.0
SHARED_LIBS +=		audqt		0.0	# 2.3

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 iconv intl m

RUN_DEPENDS =		devel/desktop-file-utils
# needed for displaying icons
RUN_DEPENDS +=		x11/qt5/qtsvg

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION} \
			LIBaudqt_VERSION=${LIBaudqt_VERSION}

.include <bsd.port.mk>
