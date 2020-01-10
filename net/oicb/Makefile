# $OpenBSD: Makefile,v 1.3 2020/01/10 08:16:17 zhuk Exp $
COMMENT =	minimalistic command-line ICB client
VERSION =	1.1.3
DISTNAME =	oicb-${VERSION}
CATEGORIES =	net
MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE =	Yes

# uses pledge() and unveil()
WANTLIB =		c ncurses readline

MASTER_SITES =		https://github.com/grayed/oicb/releases/download/v${VERSION}/

NO_TEST =		Yes

.include <bsd.port.mk>
