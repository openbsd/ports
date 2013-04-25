# $OpenBSD: Makefile,v 1.6 2013/04/25 16:40:11 sebastia Exp $

COMMENT =	Guenthers RSS reader

DISTNAME =	Grr-1.0
REVISION =	1

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
