# $OpenBSD: Makefile,v 1.7 2013/10/19 13:24:59 sebastia Exp $

COMMENT =	Guenthers RSS reader

DISTNAME =	Grr-1.0
REVISION =	2

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
