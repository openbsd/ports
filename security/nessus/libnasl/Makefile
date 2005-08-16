# $OpenBSD: Makefile,v 1.2 2005/08/16 09:49:52 espie Exp $

COMMENT=	"Nessus Attack Scripting Language"

DISTNAME=	libnasl-${VERSION}
PKGNAME=	${DISTNAME}p0

WANTLIB=  	c crypto pcap ssl util

BUILD_DEPENDS=  :bison-*:devel/bison

LIB_DEPENDS=    nessus.4,hosts_gatherer.4::security/nessus/libraries

.include <bsd.port.mk>
