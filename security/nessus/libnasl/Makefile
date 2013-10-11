# $OpenBSD: Makefile,v 1.19 2013/10/11 23:50:44 naddy Exp $

COMMENT=	Nessus Attack Scripting Language
DISTNAME=	libnasl-${V}
REVISION =	2

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util nessus>=4 hosts_gatherer>=4

LIB_DEPENDS=	security/nessus/libraries
BUILD_DEPENDS=	devel/bison


.include <bsd.port.mk>
