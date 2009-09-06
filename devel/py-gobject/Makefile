# $OpenBSD: Makefile,v 1.17 2009/09/06 10:46:25 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Python bindings for glib2 gobject

GNOME_PROJECT=	pygobject
GNOME_VERSION=	2.16.1
PKGNAME=	py-gobject-${GNOME_VERSION}p1
SHARED_LIBS +=  pyglib-2.0       0.0             # .0.0

CATEGORIES=	devel x11

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	pcre

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

LIB_DEPENDS=	gio-2.0.>=1800.0,glib-2.0.>=1800.0,gmodule-2.0.>=2.1800,gobject-2.0.>=1800.0,gthread-2.0.>=1800.0::devel/glib2

CONFIGURE_STYLE=gnu

REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
