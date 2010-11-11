# $OpenBSD: Makefile,v 1.15 2010/11/11 18:43:10 espie Exp $

COMMENT=	Nessus Attack Scripting Language
DISTNAME=	libnasl-${V}
REVISION =	1

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util nessus.>=4 hosts_gatherer.>=4

LIB_DEPENDS=	::security/nessus/libraries
BUILD_DEPENDS=	:bison-*:devel/bison

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
