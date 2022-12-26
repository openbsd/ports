COMMENT =	scan your project's dependencies for vulnerabilities

V =		1.0.1
MODGO_MODNAME =	github.com/google/osv-scanner
MODGO_VERSION =	v${V}

DISTNAME =	osv-scanner-${MODGO_VERSION}
PKGNAME =	osv-scanner-${V}

CATEGORIES =	security

HOMEPAGE =	https://github.com/google/osv-scanner

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB += c pthread

.include "modules.inc"

.include <bsd.port.mk>
