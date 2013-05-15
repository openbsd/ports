# $OpenBSD: Makefile,v 1.9 2013/05/15 14:52:19 sebastia Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.4
REVISION =	2

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient \
		x11/gnustep/sqlclient
WANTLIB += 	c m pthread mpdclient SQLClient

.include <bsd.port.mk>
