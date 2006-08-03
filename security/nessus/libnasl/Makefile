# $OpenBSD: Makefile,v 1.9 2006/08/03 23:28:12 espie Exp $

COMMENT=	"Nessus Attack Scripting Language"
DISTNAME=	libnasl-${V}

SHARED_LIBS=	nasl	4.6

WANTLIB=	c crypto pcap rpcsvc ssl util

LIB_DEPENDS=	nessus.>=4,hosts_gatherer.>=4::security/nessus/libraries
BUILD_DEPENDS=	:bison-*:devel/bison

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
