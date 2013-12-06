# $OpenBSD: Makefile,v 1.20 2013/12/06 19:32:53 naddy Exp $

COMMENT=	Nessus Attack Scripting Language
DISTNAME=	libnasl-${V}
REVISION =	3

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util nessus>=4 hosts_gatherer>=4

LIB_DEPENDS=	security/nessus/libraries
BUILD_DEPENDS=	devel/bison


.include <bsd.port.mk>
