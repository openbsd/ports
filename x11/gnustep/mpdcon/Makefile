# $OpenBSD: Makefile,v 1.6 2012/10/28 14:03:12 sebastia Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.3

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient
WANTLIB += 	c m pthread mpdclient

.include <bsd.port.mk>
