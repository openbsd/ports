# $OpenBSD: Makefile,v 1.10 2022/02/12 21:38:46 denis Exp $

COMMENT =	simple tool for managing encrypted backups in the cloud

V =		0.10.5
MODGO_MODNAME =	github.com/kopia/kopia
MODGO_VERSION =	v${V}

MODGO_LDFLAGS += -X github.com/kopia/kopia/repo.BuildVersion=${V} \
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
