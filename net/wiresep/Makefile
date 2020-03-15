# $OpenBSD: Makefile,v 1.1.1.1 2020/03/15 22:02:04 abieber Exp $

COMMENT	=		privilege separated implementation of WireGuard

GH_ACCOUNT =		timkuijsten
GH_PROJECT =		wiresep
GH_TAGNAME =		v0.8.4

CATEGORIES =		net

MAINTAINER =		Tim Kuijsten <info+ports@netsend.nl>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c crypto

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =		PREFIX=${PREFIX} ETCDIR=${SYSCONFDIR}

.include <bsd.port.mk>
