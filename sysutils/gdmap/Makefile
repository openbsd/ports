# $OpenBSD: Makefile,v 1.6 2017/11/21 00:13:03 naddy Exp $

COMMENT =		graphical disk map
DISTNAME =		gdmap-0.8.1
CATEGORIES =		sysutils x11
REVISION =		3

HOMEPAGE =		http://gdmap.sourceforge.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gdmap/}

MODULES =		textproc/intltool

LIB_DEPENDS =		textproc/libxml \
			x11/gtk+2
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
