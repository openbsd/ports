# $OpenBSD: Makefile,v 1.6 2021/12/27 11:47:21 denis Exp $

COMMENT =	simple tool for managing encrypted backups in the cloud

MODGO_MODNAME =	github.com/kopia/kopia
MODGO_VERSION =	v0.9.8

MODGO_LDFLAGS += -X github.com/kopia/kopia/repo.BuildVersion=${MODGO_VERSION} \
		-X github.com/kopia/kopia/repo.BuildInfo="`date +%Y%m%d`" \
		-X github.com/kopia/kopia/repo.BuildGitHubRepo="OpenBSD/ports"

DISTNAME =	kopia-${MODGO_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	https://kopia.io/

MAINTAINER =	Denis Fondras <denis@openbsd.org>

# Apache-2.0 License
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

USE_GMAKE =	Yes

.include "modules.inc"

.include <bsd.port.mk>
