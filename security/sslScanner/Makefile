# $OpenBSD: Makefile,v 1.4 2014/07/10 11:06:37 rpe Exp $

COMMENT=	scan a network for SSL certificates

GH_ACCOUNT=	mikecardwell
GH_PROJECT=	sslScanner
GH_COMMIT=	9817f13088122d5d25e5c57c03955cf8bd5dc32a
DISTNAME=	${GH_PROJECT}-0.20121102
REVISION=	0

CATEGORIES=	security www

HOMEPAGE=	https://github.com/mikecardwell/sslScanner

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/mikecardwell/sslScanner/archive/

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		net/p5-IO-Socket-INET6 \
		net/p5-NetAddr-IP \
		security/p5-Crypt-OpenSSL-X509 \
		security/p5-Net-SSL-ExpireDate
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sslScanner/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/sslScanner/
	${INSTALL_SCRIPT} ${WRKSRC}/sslScanner.pl ${PREFIX}/bin/sslScanner

.include <bsd.port.mk>
