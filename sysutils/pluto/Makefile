COMMENT =	cli tool to discover deprecated apiVersions in Kubernetes

MODGO_MODNAME =	github.com/fairwindsops/pluto/v5
MODGO_VERSION =	v5.24.1

DISTNAME =	pluto-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://pluto.docs.fairwinds.com

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

MODGO_LDFLAGS +=	-X main.version=$(MODGO_VERSION) \
			-X main.commit=5f85d3f

.include <modules.inc>

.include <bsd.port.mk>
