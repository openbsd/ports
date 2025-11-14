COMMENT =		Python bindings for the ammonia html sanitizer

MODPY_DISTV =		0.2.12
DISTNAME =		nh3-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

.include "crates.inc"

.include <bsd.port.mk>
