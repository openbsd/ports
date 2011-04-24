# $OpenBSD: Makefile,v 1.1.1.1 2011/04/24 14:05:55 sebastia Exp $

COMMENT =	Guenthers RSS reader

DISTNAME =	Grr-0.9.0
PKGNAME =	${DISTNAME:L}

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	http://savannah.nongnu.org/download/gap/

MODULES =	x11/gnustep
WANTLIB +=	c m pthread RSSKit
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
