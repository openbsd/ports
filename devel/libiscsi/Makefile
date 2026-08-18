COMMENT=	client-side library to implement the iSCSI protocol

DISTNAME=	libiscsi-1.20.3pl20260809
GH_ACCOUNT=	sahlberg
GH_PROJECT=	libiscsi
GH_COMMIT=	1985697419d25a62a04e7454ca8185b854b66ad3
REVISION=	0
CATEGORIES=	devel net

SHARED_LIBS=	iscsi	2.2

HOMEPAGE=	https://github.com/sahlberg/libiscsi

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv2+ and PD
PERMIT_PACKAGE=	Yes

# uses -Wvla -Wno-stringop-truncation
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	c pthread

MODULES+=	devel/cmake

# XXX libiscsi's CMakefile uses non-standard (case sensitive) STREQUAL
# tests for some variables. gnutls/gcrypt are picked up on ports-gcc
# archs due to default search paths including /usr/local/{lib,include}
CONFIGURE_ARGS=	-DENABLE_WERROR=Off \
		-DWITH_GNUTLS=no \
		-DWITH_LIBGCRYPT=no

NO_TEST=	Yes

.include <bsd.port.mk>
