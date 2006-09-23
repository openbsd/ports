# $OpenBSD: Makefile,v 1.10 2006/09/23 08:45:04 aanriot Exp $

COMMENT=	"Nessus Attack Scripting Language"
DISTNAME=	libnasl-${V}

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util

LIB_DEPENDS=	nessus.>=4,hosts_gatherer.>=4::security/nessus/libraries
BUILD_DEPENDS=	:bison-*:devel/bison

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
