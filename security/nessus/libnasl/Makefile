# $OpenBSD: Makefile,v 1.18 2013/03/21 08:48:53 ajacoutot Exp $

COMMENT=	Nessus Attack Scripting Language
DISTNAME=	libnasl-${V}
REVISION =	2

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util nessus>=4 hosts_gatherer>=4

LIB_DEPENDS=	security/nessus/libraries
BUILD_DEPENDS=	devel/bison

USE_GROFF =	Yes

.include <bsd.port.mk>
