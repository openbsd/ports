COMMENT=	Python module for GnuPG interface

MODPY_EGG_VERSION=	0.5.0
DISTNAME=	python-gnupg-${MODPY_EGG_VERSION}
PKGNAME=	py-gnupg-${MODPY_EGG_VERSION}

CATEGORIES=	security devel

HOMEPAGE=	https://bitbucket.org/vinay.sajip/python-gnupg

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PEP517=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	security/gnupg
RUN_DEPENDS=	security/gnupg

.include <bsd.port.mk>
