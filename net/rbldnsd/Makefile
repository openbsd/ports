# $OpenBSD: Makefile,v 1.15 2019/03/18 16:29:49 giovanni Exp $

COMMENT=	small daemon for DNSBLs

DISTNAME=	rbldnsd-0.998.20180516
GH_ACCOUNT=	spamhaus
GH_PROJECT=	rbldnsd
GH_COMMIT=	cfb7e80ffa690861b1b79772328aa274d1d5446a

CATEGORIES=	net

HOMEPAGE=	https://rbldnsd.io
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z
MODULES=		lang/python
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
