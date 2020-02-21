# $OpenBSD: Makefile,v 1.7 2020/02/21 15:24:38 jturner Exp $
COMMENT =	minimalistic command-line ICB client
VERSION =	1.2.3
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
