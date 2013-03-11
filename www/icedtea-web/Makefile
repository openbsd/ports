# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:42 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	Java web browser plugin
DISTNAME =	icedtea-web-1.3.1
CATEGORIES =	www

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://icedtea.classpath.org/download/source/
HOMEPAGE =	http://icedtea.classpath.org/wiki/IcedTea-Web

FLAVORS =	gtk3
FLAVOR ?=

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

.if ${FLAVOR:Mgtk3}
CONFIGURE_ARGS +=	--with-gtk=3
LIB_DEPENDS =	x11/gtk+3
WANTLIB += cairo-gobject gdk-3 gtk-3

.else
CONFIGURE_ARGS +=	--with-gtk=2
LIB_DEPENDS =	x11/gtk+2
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr gdk-x11-2.0 gtk-x11-2.0
.endif

WANTLIB += GL X11 Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

.include <bsd.port.mk>
