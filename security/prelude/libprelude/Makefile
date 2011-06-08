# $OpenBSD: Makefile,v 1.31 2011/06/08 17:45:00 jasper Exp $

# XXX fails to build if not using the bundled libtool

COMMENT=	Prelude framework library

MODPY_EGG_VERSION=0.9.24.1
DISTNAME=	libprelude-${MODPY_EGG_VERSION}
PKGNAME=	prelude-${DISTNAME}

REVISION=	5

MASTER_SITES=	http://www.prelude-ids.com/download/releases/libprelude/

SHARED_LIBS=	prelude	20.1

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

WANTLIB += c gcrypt gmp gnutls gpg-error hogweed nettle pthread
WANTLIB += tasn1 z

LIB_DEPENDS=	security/libgcrypt \
		security/gnutls

.include <bsd.port.mk>
