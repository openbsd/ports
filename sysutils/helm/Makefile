COMMENT =	package manager for Kubernetes

MODGO_MODNAME =	helm.sh/helm/v4
MODGO_VERSION =	v4.2.3

DISTNAME =	helm-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://helm.sh

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

MODGO_LDFLAGS += \
		 -X helm.sh/helm/v4/internal/version.version=${MODGO_VERSION}

.include <modules.inc>

.include <bsd.port.mk>
