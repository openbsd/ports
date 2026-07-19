COMMENT =	fast BPE tokenizer for OpenAI models

MODPY_DISTV =	0.13.0
DISTNAME =	tiktoken-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

MODPY_PYBUILD =		setuptools-rust
MODPY_TEST_DIR =	${WRKINST}${MODPY_SITEPKG}

RUN_DEPENDS =		devel/py-regex \
			www/py-requests

.include "crates.inc"
.include <bsd.port.mk>
