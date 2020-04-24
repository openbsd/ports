# $OpenBSD: Makefile,v 1.7 2020/04/24 20:50:15 kn Exp $

COMMENT =		privilege separated implementation of WireGuard

DISTNAME = 		wiresep-0.11.2
MASTER_SITES =		https://netsend.nl/wiresep/archive/

CATEGORIES =		net security

HOMEPAGE =		https://netsend.nl/wiresep

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
