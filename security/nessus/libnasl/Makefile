# $OpenBSD: Makefile,v 1.11 2007/04/03 13:55:59 aanriot Exp $

COMMENT=	"Nessus Attack Scripting Language"
DISTNAME=	libnasl-${V}
PKGNAME=	${DISTNAME}p0

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util

LIB_DEPENDS=	nessus.>=4,hosts_gatherer.>=4::security/nessus/libraries
BUILD_DEPENDS=	:bison-*:devel/bison

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
