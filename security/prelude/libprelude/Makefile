# $OpenBSD: Makefile,v 1.22 2009/05/19 11:03:31 sthen Exp $

COMMENT=	Prelude framework library

DISTNAME=	libprelude-0.9.15.1
PKGNAME=	prelude-${DISTNAME}p5

MODPY_EGG_VERSION=0.0.0

SHARED_LIBS=	prelude	13.1	# .13.1

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu

WANTLIB=	c gcrypt pthread tasn1 z

LIB_DEPENDS=	gpg-error.>=1::security/libgpg-error \
		gnutls.>=12::security/gnutls

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
