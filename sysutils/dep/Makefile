# $OpenBSD: Makefile,v 1.1.1.1 2018/07/30 00:35:56 abieber Exp $

COMMENT =	Go dependency management tool
DISTNAME =	dep-0.4.1

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
