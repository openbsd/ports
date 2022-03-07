# $OpenBSD: Makefile,v 1.13 2022/03/07 18:19:18 abieber Exp $

COMMENT =	matrix homeserver written in Go

MODGO_MODNAME =	github.com/matrix-org/dendrite
MODGO_VERSION =	v0.6.5

DISTNAME =	dendrite-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/matrix-org/dendrite

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

SUBST_VARS =		SYSCONFDIR

post-build:
	mv ${MODGO_WORKSPACE}/bin/create-account \
		${MODGO_WORKSPACE}/bin/dendrite-create-account
	mv ${MODGO_WORKSPACE}/bin/generate-config \
		${MODGO_WORKSPACE}/bin/dendrite-generate-config
	mv ${MODGO_WORKSPACE}/bin/generate-keys \
		${MODGO_WORKSPACE}/bin/dendrite-generate-keys

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dendrite/
	${INSTALL_DATA} ${WRKSRC}/dendrite-config.yaml \
		${PREFIX}/share/dendrite/dendrite.yaml

.include "modules.inc"

.include <bsd.port.mk>
