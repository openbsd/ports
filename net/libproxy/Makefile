# $OpenBSD: Makefile,v 1.3 2009/04/23 13:26:10 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	library handling all the details of proxy configuration
COMMENT-gnome=	plugin for GNOME

VERSION=	0.2.3
DISTNAME=	libproxy-${VERSION}
PKGNAME-main=	libproxy-${VERSION}p0
PKGNAME-gnome=	libproxy-gnome-${VERSION}
SHARED_LIBS +=  proxy          0.0               # .0.0
CATEGORIES=	net

HOMEPAGE=	http://libproxy.googlecode.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/python

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
USE_GMAKE=		Yes

MULTI_PACKAGES=		-main -gnome

LIB_DEPENDS-gnome=	proxy::${BUILD_PKGPATH},-main \
			gconf-2::devel/gconf2

WANTLIB-main=		ICE SM X11 Xau Xdmcp Xext Xmu Xt c m pthread

WANTLIB-gnome =		ICE ORBit-2 SM X11 Xau Xdmcp Xext Xmu Xt dbus-1 dbus-glib-1 \
			glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv \
			intl m pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--without-mozjs \
			--without-webkit

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
