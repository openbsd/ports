COMMENT=	small daemon for DNSBLs

DISTNAME=	rbldnsd-0.998.20180516
GH_ACCOUNT=	spamhaus
GH_PROJECT=	rbldnsd
GH_COMMIT=	cfb7e80ffa690861b1b79772328aa274d1d5446a
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://rbldnsd.io
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c z
MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_RUNDEP=		no

CONFIGURE_STYLE=simple
RBLDNSD_BASE=	${VARBASE}/rbldnsd
SUBST_VARS=	VARBASE RBLDNSD_BASE

TEST_TARGET=	check
TEST_DEPENDS=	net/py-dns

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rbldnsd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/rbldnsd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
