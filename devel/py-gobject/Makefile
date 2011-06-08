# $OpenBSD: Makefile,v 1.42 2011/06/08 17:39:25 jasper Exp $

COMMENT=	Python bindings for glib2 gobject

GNOME_PROJECT=	pygobject
GNOME_VERSION=	2.28.4

PKGNAME=	py-gobject-${GNOME_VERSION}

REVISION=	3
EPOCH=		0

CATEGORIES=	devel

SHARED_LIBS +=  pyglib-2.0-python${MODPY_VERSION} 2.0      # .0.0

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	graphics/py-cairo
LIB_DEPENDS=	devel/glib2 \
		devel/libffi \
		devel/gobject-introspection>=0.10.7p3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--enable-cairo

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
REGRESS_IS_INTERACTIVE= x11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/pygobject/2.0/codegen

.include <bsd.port.mk>
