# $OpenBSD: Makefile,v 1.30 2010/10/19 15:21:03 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Python bindings for glib2 gobject

GNOME_PROJECT=	pygobject
GNOME_VERSION=	2.26.0

PKGNAME=	py-gobject-${GNOME_VERSION}
EPOCH=		0
REVISION=	0

SHARED_LIBS +=  pyglib-2.0-python${MODPY_VERSION} 1.0      # .0.0

PYGLIB_VER=	${LIBpyglib-2.0-python${MODPY_VERSION}_VERSION}
SUBST_VARS+=	PYGLIB_VER

CATEGORIES=	devel x11

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	pcre z ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

LIB_DEPENDS=	::devel/glib2 \
		::devel/libffi


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-introspection

REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

REGRESS_IS_INTERACTIVE= x11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/pygobject/2.0/codegen

.include <bsd.port.mk>
