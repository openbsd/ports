# $OpenBSD: Makefile,v 1.13 2017/07/27 11:01:33 sthen Exp $

COMMENT =	Guenthers RSS reader

REVISION =	8
DISTNAME =	Grr-1.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
