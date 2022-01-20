# $OpenBSD: Makefile,v 1.1.1.1 2022/01/20 17:15:08 abieber Exp $

COMMENT =	security checker for Go projects

MODGO_MODNAME =	github.com/securego/gosec/v2
MODGO_VERSION =	v2.9.6

DISTNAME =	gosec-${MODGO_VERSION}

HOMEPAGE =	https://securego.io/

CATEGORIES =	security devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

MODGO_LDFLAGS =		-X main.Version=${MODGO_VERSION}

.include "modules.inc"

.include <bsd.port.mk>
