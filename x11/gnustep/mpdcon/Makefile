# $OpenBSD: Makefile,v 1.12 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.5.1
REVISION =	0

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient \
		x11/gnustep/sqlclient
WANTLIB += 	mpdclient SQLClient

.include <bsd.port.mk>
