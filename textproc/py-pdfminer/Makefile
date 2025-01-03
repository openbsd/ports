COMMENT=	PDF parser and analyzer

MODPY_DISTV=	20240706
DISTNAME=	pdfminer.six-${MODPY_DISTV}
PKGNAME=	py-pdfminer-${MODPY_DISTV}

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

# tests aren't included in the pypi distfiles
NO_TEST=	Yes

.include <bsd.port.mk>
