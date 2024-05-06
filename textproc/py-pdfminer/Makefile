COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20221105
DISTNAME =		pdfminer.six-${MODPY_EGG_VERSION}
PKGNAME =		py-pdfminer-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =	textproc

HOMEPAGE =	https://pdfminersix.readthedocs.io/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR} \
			textproc/py-charset-normalizer${MODPY_FLAVOR}

# tests aren't included in the pypi distfiles
NO_TEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
