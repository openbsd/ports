# $OpenBSD: Makefile,v 1.26 2010/08/30 22:24:15 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Python bindings for glib2 gobject

# XXX on update, add GObj. Introspection support to graphics/evince
GNOME_PROJECT=	pygobject
GNOME_VERSION=	2.20.0

PKGNAME=	py-gobject-${GNOME_VERSION}
REVISION=	2
EPOCH=		0

SHARED_LIBS +=  pyglib-2.0-python${MODPY_VERSION} 0.1      # .0.0

PYGLIB_VER=	${LIBpyglib-2.0-python${MODPY_VERSION}_VERSION}
SUBST_VARS+=	PYGLIB_VER

CATEGORIES=	devel x11

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	pcre z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

LIB_DEPENDS=	ffi::devel/libffi \
		gio-2.0.>=1800.0,glib-2.0.>=1800.0,gmodule-2.0.>=2.1800,gobject-2.0.>=1800.0,gthread-2.0.>=1800.0::devel/glib2

CONFIGURE_STYLE=gnu

REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

REGRESS_IS_INTERACTIVE= x11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/pygobject/2.0/codegen

.include <bsd.port.mk>
