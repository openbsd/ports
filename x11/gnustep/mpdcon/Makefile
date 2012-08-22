# $OpenBSD: Makefile,v 1.5 2012/08/22 07:15:52 sebastia Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.2
REVISION =	0

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient
WANTLIB += 	c m pthread mpdclient

.include <bsd.port.mk>
