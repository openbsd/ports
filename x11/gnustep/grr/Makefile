# $OpenBSD: Makefile,v 1.8 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	Guenthers RSS reader

DISTNAME =	Grr-1.0
REVISION =	3

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
