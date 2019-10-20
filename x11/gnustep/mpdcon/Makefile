# $OpenBSD: Makefile,v 1.20 2019/10/20 08:03:03 ajacoutot Exp $

COMMENT =	GNUstep client for Music Player Daemon

DISTNAME =	MPDCon-1.5.1
REVISION =	8

HOMEPAGE =	http://gap.nongnu.org/mpdcon/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	audio/libmpdclient \
		x11/gnustep/sqlclient
WANTLIB += 	mpdclient SQLClient
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
