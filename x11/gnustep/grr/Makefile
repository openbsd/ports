# $OpenBSD: Makefile,v 1.11 2016/03/05 16:04:08 pascal Exp $

COMMENT =	Guenthers RSS reader

REVISION =	6
DISTNAME =	Grr-1.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
