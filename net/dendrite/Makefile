# $OpenBSD: Makefile,v 1.9 2021/08/27 13:57:32 abieber Exp $

COMMENT =	matrix homeserver written in Go

MODGO_MODNAME =	github.com/matrix-org/dendrite
MODGO_VERSION =	v0.4.1

DISTNAME =	dendrite-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/matrix-org/dendrite

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

SUBST_VARS =		SYSCONFDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dendrite/
	${INSTALL_DATA} ${WRKSRC}/dendrite-config.yaml \
		${PREFIX}/share/dendrite/dendrite.yaml

.include "modules.inc"

.include <bsd.port.mk>
