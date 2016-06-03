# $OpenBSD: Makefile,v 1.12 2016/06/03 11:57:57 sebastia Exp $

COMMENT =	Guenthers RSS reader

REVISION =	7
DISTNAME =	Grr-1.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
