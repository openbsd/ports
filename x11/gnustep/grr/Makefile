# $OpenBSD: Makefile,v 1.14 2018/02/27 21:47:39 espie Exp $

COMMENT =	Guenthers RSS reader

REVISION =	9
DISTNAME =	Grr-1.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
