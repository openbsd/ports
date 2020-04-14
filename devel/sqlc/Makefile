# $OpenBSD: Makefile,v 1.2 2020/04/14 21:38:00 sthen Exp $

BROKEN-aarch64 = port/atomics/arch-arm.h file not found

COMMENT =	create type safe go from SQL

V =		1.1.0
DISTNAME =	sqlc-${V}

CATEGORIES =	devel

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go
MODGO_LDFLAGS =	-X "github.com/kyleconroy/sqlc/internal/cmd.version=${V}"

ALL_TARGET =	github.com/kyleconroy/sqlc

NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && \
		${MODGO_BUILD_CMD} ./cmd/sqlc

.include <bsd.port.mk>
