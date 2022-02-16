# $OpenBSD: Makefile,v 1.14 2022/02/16 12:49:40 abieber Exp $

# github.com/kyleconroy/sqlc/internal/engine/sqlite/parser fails on LP32
ONLY_FOR_ARCHS =	aarch64 amd64

COMMENT =	create type safe go from SQL

MODGO_MODNAME =	github.com/kyleconroy/sqlc
MODGO_VERSION =	v1.12.0

DISTNAME =	sqlc-${MODGO_VERSION}

CATEGORIES =	devel

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
MODGO_LDFLAGS =	-X "github.com/kyleconroy/sqlc/internal/cmd.version=${MODGO_VERSION}"

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
