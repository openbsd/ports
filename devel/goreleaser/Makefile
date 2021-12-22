# $OpenBSD: Makefile,v 1.1.1.1 2021/12/22 15:32:51 abieber Exp $

COMMENT =	deliver Go binaries as fast and easily as possible

MODGO_MODNAME =	github.com/goreleaser/goreleaser
MODGO_VERSION =	v1.1.0

HOMEPAGE =	https://goreleaser.com/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

DISTNAME =	goreleaser-${MODGO_VERSION}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

.include "modules.inc"

.include <bsd.port.mk>
