# $OpenBSD: Makefile,v 1.5 2007/10/08 08:22:39 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	Python bindings for glib2 gobject

V=		2.14.0
DISTNAME=	pygobject-${V}
PKGNAME=	py-gobject-${V}p1
CATEGORIES=	devel x11

HOMEPAGE=	http://www.pygtk.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pygobject/${V:R}/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext lang/python
LIB_DEPENDS=	glib-2.0.>=1200.0,gobject-2.0.>=1200.0,gthread-2.0.>=1200.0::devel/glib2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 

REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS+=DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
