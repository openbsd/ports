# $OpenBSD: Makefile,v 1.19 2019/10/16 13:45:05 ajacoutot Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.5.1
REVISION =	7

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient \
		x11/gnustep/sqlclient
WANTLIB += 	mpdclient SQLClient
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
