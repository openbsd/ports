# $OpenBSD: Makefile,v 1.5 2017/09/27 07:20:12 dcoppa Exp $

COMMENT =		graphical disk map
DISTNAME =		gdmap-0.8.1
CATEGORIES =		sysutils x11
REVISION =		2

HOMEPAGE =		http://gdmap.sourceforge.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gdmap/}

MODULES =		devel/gettext \
			textproc/intltool

LIB_DEPENDS =		textproc/libxml \
			x11/gtk+2
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
