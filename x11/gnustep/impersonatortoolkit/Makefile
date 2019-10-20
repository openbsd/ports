# $OpenBSD: Makefile,v 1.12 2019/10/20 08:03:03 ajacoutot Exp $

COMMENT =	web cookies sniffer and providing proxy

ONLY_FOR_ARCHS =	${MODCLANG_ARCHS}

REVISION =	8
DISTNAME =	ImpersonatorToolKit-0.3
CATEGORIES =	net security

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB +=	c PcapKit SQLClient WebServer
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/pcapkit \
		x11/gnustep/sqlclient \
		x11/gnustep/webserver

.include <bsd.port.mk>
