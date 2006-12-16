# $OpenBSD: Makefile,v 1.7 2006/12/16 12:22:33 espie Exp $

COMMENT=	"basic utility library for xfce4"
V=		4.2.3.2
DISTNAME=	libxfce4util-${V}
SHARED_LIBS=	xfce4util 1.9

CATEGORIES=	devel
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
DIST_SUBDIR=	xfce4

HOMEPAGE=	http://www.xfce.org/

# BSD, LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes

WANTLIB=	c
MODULES=	devel/gettext
LIB_DEPENDS=	glib-2.0.>=400.8,gobject-2.0.>=400.8::devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-gtk-doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
