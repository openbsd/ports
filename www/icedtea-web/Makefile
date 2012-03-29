# $OpenBSD: Makefile,v 1.3 2012/03/29 12:28:27 kurt Exp $

SHARED_ONLY =	Yes
COMMENT =	Java web browser plugin
DISTNAME =	icedtea-web-1.2
CATEGORIES =	www
REVISION =	0

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://icedtea.classpath.org/download/source/
HOMEPAGE =	http://icedtea.classpath.org/wiki/IcedTea-Web

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-jdk-home=${LOCALBASE}/jdk-1.7.0 \
			--disable-docs \
			--libdir=${TRUEPREFIX}/lib/mozilla/plugins
CONFIGURE_ENV =		MOZILLA_CFLAGS="`pkg-config --cflags xulrunner-plugin`" \
			MOZILLA_LIBS="`pkg-config --libs xulrunner-plugin`"

MODULES =	java \
		devel/gettext

MODJAVA_VER=	1.7+

BUILD_DEPENDS =	archivers/zip \
		archivers/gtar \
		devel/xulrunner/1.9,-devel
# otherwise PaxHeaders file get in the way
TAR =		${LOCALBASE}/bin/gtar
USE_GMAKE =	Yes

LIB_DEPENDS =	x11/gtk+2 \
		devel/glib2>=2.28.8p1 #for the gio/EINTR fix

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

.include <bsd.port.mk>
