COMMENT=	Python module for GnuPG interface

MODPY_DISTV=	0.5.3
DISTNAME=	python-gnupg-${MODPY_DISTV}
PKGNAME=	py-gnupg-${MODPY_DISTV}

CATEGORIES=	security devel

HOMEPAGE=	https://bitbucket.org/vinay.sajip/python-gnupg

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	security/gnupg
RUN_DEPENDS=	security/gnupg

.include <bsd.port.mk>
