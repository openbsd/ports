# $OpenBSD: Makefile,v 1.9 2021/02/09 21:08:19 kn Exp $
COMMENT =	minimalistic command-line ICB client
VERSION =	1.2.4
DISTNAME =	oicb-${VERSION}
CATEGORIES =	net
MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>
REVISION =	0

# 2-clause BSD
PERMIT_PACKAGE =	Yes

# uses pledge() and unveil()
WANTLIB =		c curses readline

MASTER_SITES =		https://github.com/grayed/oicb/releases/download/v${VERSION}/

NO_TEST =		Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
