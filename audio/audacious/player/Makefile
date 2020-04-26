# $OpenBSD: Makefile,v 1.2 2020/04/26 07:37:13 ajacoutot Exp $

COMMENT =		graphical audio player which supports lots of formats

DISTNAME =		audacious-${VERSION}
PKGNAME =		audacious-player-${VERSION}

SHARED_LIBS +=		audcore		5.1 	# 5.2
SHARED_LIBS +=		audgui		4.1	# 5.1
SHARED_LIBS +=		audtag		3.0	# 3.0

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 z

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gettext,-tools
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		x11/gtk+2

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudgui_VERSION=${LIBaudgui_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-qt \
			--enable-gtk

NO_TEST =		Yes

.include <bsd.port.mk>
