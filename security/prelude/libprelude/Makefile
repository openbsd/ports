# $OpenBSD: Makefile,v 1.19 2008/10/26 10:51:33 landry Exp $

COMMENT=	Prelude framework library

DISTNAME=	libprelude-0.9.15.1
PKGNAME=	prelude-${DISTNAME}p3

MODPY_EGG_VERSION=0.0.0

SHARED_LIBS=	prelude	13.1	# .13.1

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu

WANTLIB=	c gcrypt pthread z

LIB_DEPENDS=	gpg-error.>=1::security/libgpg-error \
		gnutls.>=12::security/gnutls

CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
