# $OpenBSD: Makefile,v 1.15 2013/02/02 10:35:24 sthen Exp $

COMMENT=	Python bindings for glib2 gobject

GNOME_PROJECT=	pygobject
GNOME_VERSION=	3.4.2
REVISION=	0
MODPY_EGG_VERSION=${GNOME_VERSION}

PKGNAME=	py-gobject3-${GNOME_VERSION}

CATEGORIES=	devel

SHARED_LIBS +=  pyglib-gi-2.0-python${MODPY_VERSION}   1.0 # 0.0

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += cairo drm expat ffi fontconfig freetype gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	graphics/py-cairo
LIB_DEPENDS=	devel/gobject-introspection>=1.34.1.1
SUBST_VARS+=	OSREV

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-cairo

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
REGRESS_IS_INTERACTIVE= x11

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gi/{,_glib,_gobject}/*.{a,la}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/pygobject/2.0/codegen

.include <bsd.port.mk>
