# $OpenBSD: Makefile,v 1.2 2020/12/22 21:02:02 solene Exp $

COMMENT =		command-line tool for controlling Docker

V =			19.03.13

GH_ACCOUNT =		docker
GH_PROJECT =		cli
GH_TAGNAME =		v${V}
PKGNAME =		docker-${DISTNAME}


CATEGORIES =		sysutils

HOMEPAGE =		https://docs.docker.com/engine/reference/commandline/cli/

MAINTAINER =		Muhammad Kaisar Arkhan <hi@yukiisbo.red>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread

MODULES =		lang/go
MODGO_LDFLAGS =		-X github.com/docker/cli/cli/version.Version=${V}

GO_PKGNAME =		github.com/docker/cli
WRKSRC =		${MODGO_WORKSPACE}/src/${GO_PKGNAME}
ALL_TARGET =		github.com/docker/cli/cmd/docker

.include <bsd.port.mk>
