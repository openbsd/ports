# $OpenBSD: Makefile,v 1.8 2006/06/01 05:16:32 aanriot Exp $

COMMENT=	"Nessus Attack Scripting Language"
DISTNAME=	libnasl-${V}

SHARED_LIBS=	nasl	4.6

WANTLIB=	c crypto pcap rpcsvc ssl util

LIB_DEPENDS=	nessus.4,hosts_gatherer.4::security/nessus/libraries
BUILD_DEPENDS=	:bison-*:devel/bison

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
