# $OpenBSD: Makefile,v 1.15 2018/11/26 14:17:13 sebastia Exp $

COMMENT =	Guenthers RSS reader

REVISION =	10
DISTNAME =	Grr-1.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
