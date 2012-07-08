# $OpenBSD: Makefile,v 1.4 2012/07/08 13:50:31 sebastia Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.2

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient
WANTLIB += 	c m pthread mpdclient

.include <bsd.port.mk>
