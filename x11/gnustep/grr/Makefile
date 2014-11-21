# $OpenBSD: Makefile,v 1.9 2014/11/21 18:21:21 sebastia Exp $

COMMENT =	Guenthers RSS reader

DISTNAME =	Grr-1.0
REVISION =	4

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
