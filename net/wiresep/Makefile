# $OpenBSD: Makefile,v 1.4 2020/03/31 19:00:59 kn Exp $

COMMENT =		privilege separated implementation of WireGuard

GH_ACCOUNT =		timkuijsten
GH_PROJECT =		wiresep
GH_TAGNAME =		v0.10.1

CATEGORIES =		net

MAINTAINER =		Tim Kuijsten <info+ports@netsend.nl>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c crypto

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =		PREFIX=${PREFIX} ETCDIR=${SYSCONFDIR}

.include <bsd.port.mk>
