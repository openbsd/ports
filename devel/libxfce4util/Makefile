# $OpenBSD: Makefile,v 1.2 2005/05/22 01:28:06 jolan Exp $

COMMENT=	"basic utility library for xfce4"
V=		4.2.2
DISTNAME=	libxfce4util-${V}
CATEGORIES=	devel
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
DIST_SUBDIR=	xfce4

HOMEPAGE=	http://www.xfce.org/

# BSD, LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c
MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.400.8,gobject-2.0.400.8::devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-gtk-doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
