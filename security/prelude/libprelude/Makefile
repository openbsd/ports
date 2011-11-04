# $OpenBSD: Makefile,v 1.34 2011/11/04 08:43:32 jasper Exp $

# XXX fails to build if not using the bundled libtool

COMMENT=	Prelude framework library

MODPY_EGG_VERSION=0.9.24.1
DISTNAME=	libprelude-${MODPY_EGG_VERSION}
PKGNAME=	prelude-${DISTNAME}

REVISION=	8

MASTER_SITES=	http://www.prelude-ids.com/download/releases/libprelude/

SHARED_LIBS=	prelude	20.1

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

WANTLIB += c gcrypt gmp gnutls gpg-error hogweed nettle pthread
WANTLIB += tasn1 z p11-kit ${MODPY_WANTLIB}

LIB_DEPENDS=	security/libgcrypt \
		security/gnutls

.include <bsd.port.mk>
