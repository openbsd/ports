# $OpenBSD: Makefile,v 1.1.1.1 2013/09/23 11:49:45 sthen Exp $

COMMENT=	scan a network for SSL certificates

DISTNAME=	sslScanner-0.20121102

G=		9817f13088122d5d25e5c57c03955cf8bd5dc32a
DISTFILES=	${DISTNAME}.tar.gz{$G.tar.gz}
WRKDIST=	${WRKDIR}/sslScanner-$G

CATEGORIES=	security www

HOMEPAGE=	https://github.com/mikecardwell/sslScanner

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/mikecardwell/sslScanner/archive/

RUN_DEPENDS=	net/p5-IO-Socket-INET6 \
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
