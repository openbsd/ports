# $OpenBSD: Makefile,v 1.74 2009/08/10 06:33:44 kili Exp $

COMMENT=	GTK+2 IRC client

MAJOR=		2.8
VERSION=	${MAJOR}.6
DISTNAME=	xchat-${VERSION}
PKGNAME=	${DISTNAME}p4

CATEGORIES=	net x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xchat.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto dbus-1
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre perl pixman-1 png pthread pthread-stubs
WANTLIB += ssl util xcb xml2 z

MASTER_SITES=	${HOMEPAGE}files/source/${MAJOR}/ \
		${MASTER_SITE_SOURCEFORGE:=xchat/}

MODULES=	devel/gettext \
		devel/gconf2

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		dbus-glib-1.>=4::x11/dbus-glib \
		sexy::x11/libsexy

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
MODGCONF2_SCHEMAS_DIR= xchat
MODGCONF2_LIBDEP= No

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
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
