# $OpenBSD: Makefile,v 1.3 2020/07/12 12:15:52 bket Exp $

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

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudgui_VERSION=${LIBaudgui_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION}

.include <bsd.port.mk>
