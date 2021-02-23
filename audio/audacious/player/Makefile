# $OpenBSD: Makefile,v 1.6 2021/02/23 06:30:57 bket Exp $

COMMENT =		graphical audio player which supports lots of formats

DISTNAME =		audacious-${VERSION}
PKGNAME =		audacious-player-${VERSION}
REVISION =		0

FLAVORS =		qt5
FLAVOR ?=

SHARED_LIBS +=		audcore		5.2 	# 5.3
SHARED_LIBS +=		audgui		4.1	# 5.1
SHARED_LIBS +=		audtag		3.0	# 3.0
SHARED_LIBS +=		audqt		0.0	# 2.3

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m

.if ${FLAVOR:Mqt5}
WANTLIB += Qt5Core Qt5Gui Qt5Widgets
.else
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z
.endif

RUN_DEPENDS =		devel/desktop-file-utils

.if !${FLAVOR:Mqt5}
RUN_DEPENDS +=		x11/gtk+3,-guic
.endif

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudgui_VERSION=${LIBaudgui_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION} \
			LIBaudqt_VERSION=${LIBaudqt_VERSION}

.include <bsd.port.mk>
