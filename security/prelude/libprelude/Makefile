# $OpenBSD: Makefile,v 1.23 2009/08/30 20:37:16 rui Exp $

COMMENT=	Prelude framework library

MODPY_EGG_VERSION=0.9.24.1
DISTNAME=	libprelude-${MODPY_EGG_VERSION}
PKGNAME=	prelude-${DISTNAME}

MASTER_SITES=	http://www.prelude-ids.com/download/releases/libprelude/

SHARED_LIBS=	prelude	20.1

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu

WANTLIB=	c gcrypt tasn1 z

LIB_DEPENDS=	gpg-error.>=1::security/libgpg-error \
		gnutls.>=12::security/gnutls

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
