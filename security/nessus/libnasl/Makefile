# $OpenBSD: Makefile,v 1.5 2005/11/17 02:28:39 naddy Exp $

COMMENT=	"Nessus Attack Scripting Language"

DISTNAME=	libnasl-${VERSION}
PKGNAME=	${DISTNAME}p3

WANTLIB=  	c crypto pcap rpcsvc ssl util

BUILD_DEPENDS=  :bison-*:devel/bison

LIB_DEPENDS=    nessus.4,hosts_gatherer.4::security/nessus/libraries

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libnasl/
	${INSTALL_DATA} ${WRKSRC}/doc/nessus_org.pem ${PREFIX}/share/libnasl/


.include <bsd.port.mk>
