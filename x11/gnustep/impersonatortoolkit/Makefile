# $OpenBSD: Makefile,v 1.2 2013/11/21 16:05:49 sebastia Exp $

COMMENT =	web cookies sniffer and providing proxy

ONLY_FOR_ARCHS =	${MODCLANG_ARCHS}

DISTNAME =	ImpersonatorToolKit-0.2
CATEGORIES =	net security

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB +=	pthread PcapKit
WANTLIB +=	SQLClient WebServer c gnustep-base m objc2
LIB_DEPENDS +=	x11/gnustep/pcapkit \
		x11/gnustep/sqlclient \
		x11/gnustep/webserver

MODGNUSTEP_NEEDS_GUI =	No

.include <bsd.port.mk>
