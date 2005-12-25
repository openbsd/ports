# $OpenBSD: Makefile,v 1.6 2005/12/25 15:52:38 sturm Exp $

COMMENT=	"Nessus Attack Scripting Language"

DISTNAME=	libnasl-${VERSION}
PKGNAME=	${DISTNAME}p4
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
