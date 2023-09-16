# github.com/kyleconroy/sqlc/internal/engine/sqlite/parser fails on LP32
ONLY_FOR_ARCHS =	aarch64 amd64

COMMENT =	create type safe go from SQL

# 1.21.0 hits https://github.com/sqlc-dev/sqlc/issues/2726
MODGO_MODNAME =	github.com/sqlc-dev/sqlc
MODGO_VERSION =	v1.20.0
HOMEPAGE =	https://sqlc.dev/
PORTROACH =	site:https://github.com/sqlc-dev/sqlc/releases/

DISTNAME =	sqlc-${MODGO_VERSION}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
MODGO_LDFLAGS =	-X "github.com/sqlc-dev/sqlc/internal/cmd.version=${MODGO_VERSION}"

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
