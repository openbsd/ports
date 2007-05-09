# $OpenBSD: Makefile,v 1.1.1.1 2007/05/09 21:43:48 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python bindings for glib2 gobject"

V=		2.13.1
DISTNAME=	pygobject-${V}
PKGNAME=	py-gobject-${V}
CATEGORIES=	x11

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

.include <bsd.port.mk>
