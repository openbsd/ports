COMMENT =		Python bindings for the ammonia html sanitizer

# XXX: superset (not yet in ports) needs < 0.3
MODPY_DISTV =		0.2.22
DISTNAME =		nh3-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

.include "crates.inc"

.include <bsd.port.mk>
