COMMENT=	PDF parser and analyzer

MODPY_DISTV=	20260107
DISTNAME=	pdfminer_six-${MODPY_DISTV}
PKGNAME=	py-pdfminer-${MODPY_DISTV}

CATEGORIES=	textproc

HOMEPAGE=	https://pdfminersix.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	security/py-cryptography \
		textproc/py-charset-normalizer

# some test files missing from sdist (samples/, plus a couple of
# non-test_* files in tests/); still some failures due to that with
# these ignores, but none of the tests in these files work
MODPY_PYTEST_ARGS= \
		--ignore tests/test_highlevel_extracttext.py \
		--ignore tests/test_tools_dumppdf.py \
		--ignore tests/test_tools_pdf2txt.py

.include <bsd.port.mk>
