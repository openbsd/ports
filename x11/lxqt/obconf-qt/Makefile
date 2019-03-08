# $OpenBSD: Makefile,v 1.2 2019/03/08 20:00:48 cwen Exp $

COMMENT =	configuration editor for openbox window manager

VERSION =	0.13.0

NAME =		obconf-qt
DISTNAME =	${NAME}-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} ICE Imlib2 Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras SM X11 Xft c cairo fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 intl m
WANTLIB += obrender obt pango-1.0 pangoft2-1.0 pangoxft-1.0 rsvg-2
WANTLIB += xml2 z

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			x11/openbox

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-obconf-qt \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

.include <bsd.port.mk>
