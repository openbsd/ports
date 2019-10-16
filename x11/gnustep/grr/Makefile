# $OpenBSD: Makefile,v 1.16 2019/10/16 13:45:05 ajacoutot Exp $

COMMENT =	Guenthers RSS reader

REVISION =	11
DISTNAME =	Grr-1.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
