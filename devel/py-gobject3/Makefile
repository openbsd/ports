# $OpenBSD: Makefile,v 1.3 2011/10/21 22:51:25 ajacoutot Exp $

COMMENT=	Python bindings for glib2 gobject

GNOME_PROJECT=	pygobject
GNOME_VERSION=	3.0.2

PKGNAME=	py-gobject3-${GNOME_VERSION}

CATEGORIES=	devel

SHARED_LIBS +=  pyglib-gi-2.0-python${MODPY_VERSION}   0.0 # 0.0

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
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	graphics/py-cairo
LIB_DEPENDS=	devel/gobject-introspection>=1.30.0

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-cairo

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
REGRESS_IS_INTERACTIVE= x11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/pygobject/2.0/codegen

.include <bsd.port.mk>
