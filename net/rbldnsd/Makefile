# $OpenBSD: Makefile,v 1.14 2018/09/04 12:46:18 espie Exp $

COMMENT=	small daemon for DNSBLs

DISTNAME=	rbldnsd-0.998.20171115
GH_ACCOUNT=	spamhaus
GH_PROJECT=	rbldnsd
GH_COMMIT=	6111aba2a76423a0a05030c1bb8ca697a24877bb
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	https://rbldnsd.io

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
