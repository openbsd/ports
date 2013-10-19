# $OpenBSD: Makefile,v 1.10 2013/10/19 13:25:02 sebastia Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.4
REVISION =	3

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient \
		x11/gnustep/sqlclient
WANTLIB += 	c m pthread mpdclient SQLClient

.include <bsd.port.mk>
