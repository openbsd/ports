# $OpenBSD: Makefile,v 1.87 2013/09/27 17:49:08 ajacoutot Exp $

COMMENT=	GTK+2 IRC client

MAJOR=		2.8
VERSION=	${MAJOR}.8
DISTNAME=	xchat-${VERSION}
REVISION=	4

CATEGORIES=	net x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xchat.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre perl pixman-1 png pthread pthread-stubs sexy ssl util xcb
WANTLIB += xcb-render xcb-render-util xml2 z

MASTER_SITES=	${HOMEPAGE}files/source/${MAJOR}/ \
		${MASTER_SITE_SOURCEFORGE:=xchat/}

MODULES=	devel/gettext \
		devel/gconf2

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/gtk+2 \
		x11/dbus-glib \
		x11/libsexy

USE_GMAKE=	Yes
MODGCONF2_SCHEMAS_DIR= xchat
MODGCONF2_LIBDEP= No

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-libiconv-prefix=${LOCALBASE} \
		--with-libintl-prefix=${LOCALBASE} \
		--enable-perl \
		--enable-ipv6 \
		--enable-dbus \
		--enable-openssl="/usr" \
		--disable-tcl \
		--disable-python \
		--disable-textfe \
		--disable-mmx
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GCONF_SCHEMA_FILE_DIR=${LOCALBASE}/${SCHEMAS_INSTDIR}/

.include <bsd.port.mk>
