COMMENT =		sigstore signing tool

MODGO_MODNAME =		github.com/sigstore/cosign/v3
MODGO_VERSION =		v3.1.2

DISTNAME =		cosign-${MODGO_VERSION}
PKGNAME =		cosign-3.1.2

HOMEPAGE =		https://www.sigstore.dev/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

CATEGORIES =		security

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

.include <modules.inc>

.include <bsd.port.mk>
