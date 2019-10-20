# $OpenBSD: Makefile,v 1.17 2019/10/20 08:03:02 ajacoutot Exp $

COMMENT =	Guenthers RSS reader

REVISION =	12
DISTNAME =	Grr-1.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB +=	RSSKit
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	x11/gnustep/rsskit

.include <bsd.port.mk>
