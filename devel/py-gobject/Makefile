# $OpenBSD: Makefile,v 1.19 2009/10/09 22:18:13 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Python bindings for glib2 gobject

GNOME_PROJECT=	pygobject
GNOME_VERSION=	2.20.0
PKGNAME=	py-gobject-${GNOME_VERSION}
SHARED_LIBS +=  pyglib-2.0-python${MODPY_VERSION} 0.0      # .0.0

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

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/gobject-introspection
LIB_DEPENDS=	ffi::devel/libffi \
		gio-2.0.>=1800.0,glib-2.0.>=1800.0,gmodule-2.0.>=2.1800,gobject-2.0.>=1800.0,gthread-2.0.>=1800.0::devel/glib2

CONFIGURE_STYLE=gnu

REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
