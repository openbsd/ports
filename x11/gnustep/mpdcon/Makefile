COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.5.1
REVISION =	11

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
SITES =		${SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient \
		x11/gnustep/sqlclient
WANTLIB += 	mpdclient SQLClient
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
