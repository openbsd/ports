COMMENT=	infer file type and MIME type

MODPY_EGG_VERSION=	1.2.0
DISTNAME=	filetype-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/h2non/filetype.py

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/flake8 \
		devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
