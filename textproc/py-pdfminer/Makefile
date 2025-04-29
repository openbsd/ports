COMMENT=	PDF parser and analyzer

MODPY_DISTV=	20250324
DISTNAME=	pdfminer.six-${MODPY_DISTV}
PKGNAME=	py-pdfminer-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://pdfminersix.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-setuptools-git-versioning
RUN_DEPENDS=	security/py-cryptography \
		textproc/py-charset-normalizer

# some test files missing from sdist (samples/, plus a couple of
# non-test_* files in tests/)
NO_TEST=	Yes

.include <bsd.port.mk>
