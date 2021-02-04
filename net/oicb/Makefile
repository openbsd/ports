# $OpenBSD: Makefile,v 1.8 2021/02/04 18:52:09 zhuk Exp $
COMMENT =	minimalistic command-line ICB client
VERSION =	1.2.4
DISTNAME =	oicb-${VERSION}
CATEGORIES =	net
MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE =	Yes

# uses pledge() and unveil()
WANTLIB =		c curses readline

MASTER_SITES =		https://github.com/grayed/oicb/releases/download/v${VERSION}/

NO_TEST =		Yes

.include <bsd.port.mk>
