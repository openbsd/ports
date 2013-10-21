# $OpenBSD: Makefile,v 1.1.1.1 2013/10/21 11:09:38 sebastia Exp $

COMMENT =	web cookies sniffer and providing proxy

ONLY_FOR_ARCHS =	${MODCLANG_ARCHS}

DISTNAME =	ImpersonatorToolKit-0.1
CATEGORIES =	net security

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
MASTER_SITES =	https://www.l00-bugdead-prods.de/distfiles/

MODULES =	x11/gnustep
WANTLIB +=	pthread PcapKit
WANTLIB +=	SQLClient WebServer c gnustep-base m objc2
LIB_DEPENDS +=	x11/gnustep/pcapkit \
		x11/gnustep/sqlclient \
		x11/gnustep/webserver

MODGNUSTEP_NEEDS_GUI =	No

.include <bsd.port.mk>
