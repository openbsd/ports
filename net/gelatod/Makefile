# $OpenBSD: Makefile,v 1.1.1.1 2021/11/17 20:36:10 kn Exp $

COMMENT =		CLAT configuration daemon for OpenBSD
V =			1.2
DISTNAME =		gelatod-${V}
CATEGORIES =		net

# BSD 2-clause
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/fobser/gelatod/releases/download/v${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# uses pledge()
WANTLIB =		c event util

NO_TESTS =		Yes

.include <bsd.port.mk>
