# $OpenBSD: Makefile,v 1.7 2006/05/04 22:40:24 aanriot Exp $

COMMENT=	"Nessus Attack Scripting Language"

DISTNAME=	libnasl-${VERSION}
PKGNAME=	${DISTNAME}p5
SHARED_LIBS=	nasl	4.5
MODGNU_SHARED_LIBS=nasl	''

WANTLIB=  	c crypto pcap rpcsvc ssl util

BUILD_DEPENDS=  :bison-*:devel/bison

LIB_DEPENDS=    nessus.4,hosts_gatherer.4::security/nessus/libraries

USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libnasl/
	${INSTALL_DATA} ${WRKSRC}/doc/nessus_org.pem ${PREFIX}/share/libnasl/


.include <bsd.port.mk>
