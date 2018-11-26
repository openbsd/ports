# $OpenBSD: Makefile,v 1.18 2018/11/26 14:17:13 sebastia Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.5.1
REVISION =	6

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient \
		x11/gnustep/sqlclient
WANTLIB += 	mpdclient SQLClient
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
