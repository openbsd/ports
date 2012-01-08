# $OpenBSD: Makefile,v 1.3 2012/01/08 12:03:09 sebastia Exp $

COMMENT =	Guenthers RSS reader

DISTNAME =	Grr-0.9.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
