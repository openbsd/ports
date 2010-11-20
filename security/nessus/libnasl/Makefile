# $OpenBSD: Makefile,v 1.16 2010/11/20 17:22:44 espie Exp $

COMMENT=	Nessus Attack Scripting Language
DISTNAME=	libnasl-${V}
REVISION =	1

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util nessus>=4 hosts_gatherer>=4

LIB_DEPENDS=	security/nessus/libraries
BUILD_DEPENDS=	devel/bison

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
