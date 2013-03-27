# $OpenBSD: Makefile,v 1.17 2013/03/27 17:52:09 ajacoutot Exp $

COMMENT=	Python bindings for glib2 gobject

GNOME_PROJECT=	pygobject
GNOME_VERSION=	3.8.0
MODPY_EGG_VERSION=${GNOME_VERSION}

PKGNAME=	py-gobject3-${GNOME_VERSION}

CATEGORIES=	devel

SHARED_LIBS +=  pyglib-gi-2.0-python${MODPY_VERSION}   1.0 # 0.0

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender cairo expat ffi fontconfig freetype
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	graphics/py-cairo
LIB_DEPENDS=	devel/gobject-introspection
SUBST_VARS+=	OSREV

CONFIGURE_STYLE=gnu

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_IS_INTERACTIVE= x11

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gi/{,_glib,_gobject}/*.{a,la}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/pygobject/2.0/codegen

.include <bsd.port.mk>
