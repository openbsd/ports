# $OpenBSD: Makefile,v 1.14 2010/10/18 21:41:45 espie Exp $

COMMENT=	Nessus Attack Scripting Language
DISTNAME=	libnasl-${V}
PKGNAME=	${DISTNAME}p1

SHARED_LIBS=	nasl	4.7

WANTLIB=	c crypto pcap rpcsvc ssl util

LIB_DEPENDS=	nessus.>=4,hosts_gatherer.>=4::security/nessus/libraries
BUILD_DEPENDS=	:bison-*:devel/bison

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
