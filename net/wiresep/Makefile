# $OpenBSD: Makefile,v 1.2 2020/03/18 22:18:37 tb Exp $

COMMENT	=		privilege separated implementation of WireGuard

GH_ACCOUNT =		timkuijsten
GH_PROJECT =		wiresep
GH_TAGNAME =		v0.8.4
REVISION =		0

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
