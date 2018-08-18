# $OpenBSD: Makefile,v 1.2 2018/08/18 01:12:28 abieber Exp $

COMMENT =	Go dependency management tool
DISTNAME =	dep-0.5.0

CATEGORIES =	sysutils

HOMEPAGE =	https://golang.github.io/dep/

# MIT
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/

MODULES =	lang/go

ALL_TARGET =	github.com/golang/dep

do-build:
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ./cmd/dep/

.include <bsd.port.mk>
