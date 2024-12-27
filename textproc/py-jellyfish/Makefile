COMMENT =		Python library for approximate and phonetic string matching

MODPY_DISTV =		1.1.0
REVISION =		2
DISTNAME =		jellyfish-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}

CATEGORIES =		textproc

HOMEPAGE =		https://jamesturk.github.io/jellyfish/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pyproject.toml

.include "crates.inc"

.include <bsd.port.mk>
