COMMENT =	PDF parser and analyzer

MODPY_DISTV =	20221105
DISTNAME =		pdfminer.six-${MODPY_DISTV}
PKGNAME =		py-pdfminer-${MODPY_DISTV}
REVISION =		2

CATEGORIES =	textproc

HOMEPAGE =	https://pdfminersix.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		security/py-cryptography \
			textproc/py-charset-normalizer

# tests aren't included in the pypi distfiles
NO_TEST =		Yes

.include <bsd.port.mk>
