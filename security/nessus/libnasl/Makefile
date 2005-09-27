# $OpenBSD: Makefile,v 1.4 2005/09/27 18:43:01 msf Exp $

COMMENT=	"Nessus Attack Scripting Language"

DISTNAME=	libnasl-${VERSION}
PKGNAME=	${DISTNAME}p2

WANTLIB=  	c crypto pcap ssl util

BUILD_DEPENDS=  :bison-*:devel/bison

LIB_DEPENDS=    nessus.4,hosts_gatherer.4::security/nessus/libraries

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libnasl/
	${INSTALL_DATA} ${WRKSRC}/doc/nessus_org.pem ${PREFIX}/share/libnasl/


.include <bsd.port.mk>
