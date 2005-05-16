# $OpenBSD: Makefile,v 1.1.1.1 2005/05/16 16:02:56 sturm Exp $

COMMENT=	"Nessus Attack Scripting Language"

DISTNAME=	libnasl-${VERSION}

WANTLIB=  	c crypto pcap ssl util

BUILD_DEPENDS=  :bison-*:devel/bison

LIB_DEPENDS=    nessus.4,hosts_gatherer.4::security/nessus/libraries

.include <bsd.port.mk>
