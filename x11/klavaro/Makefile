# $OpenBSD: Makefile,v 1.23 2019/07/12 20:51:15 sthen Exp $

COMMENT =	touch typing tutor program

DISTNAME =	klavaro-1.5.0
REVISION =	11

CATEGORIES =	x11

HOMEPAGE =	http://klavaro.sourceforge.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

USE_BZIP2 = 	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo curl fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 gtkdatabox intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=klavaro/}

EXTRACT_SUFX = 	.tar.bz2

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS = 	devel/gettext,-runtime \
		x11/gtk+2 \
		x11/gtkdatabox \
		net/curl
RUN_DEPENDS =	x11/gtk+3,-guic

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib" \

.include <bsd.port.mk>
