# $OpenBSD: Makefile,v 1.3 2019/07/12 21:02:26 sthen Exp $

COMMENT =	Go dependency management tool
DISTNAME =	dep-0.5.0

CATEGORIES =	sysutils

HOMEPAGE =	https://golang.github.io/dep/

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/

MODULES =	lang/go

ALL_TARGET =	github.com/golang/dep

do-build:
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ./cmd/dep/

.include <bsd.port.mk>
