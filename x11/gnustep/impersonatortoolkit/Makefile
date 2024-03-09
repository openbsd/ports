COMMENT =	web cookies sniffer and providing proxy

REVISION =	11
DISTNAME =	ImpersonatorToolKit-0.3
CATEGORIES =	net security

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
SITES =		http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB +=	c PcapKit SQLClient WebServer
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/pcapkit \
		x11/gnustep/sqlclient \
		x11/gnustep/webserver

.include <bsd.port.mk>
