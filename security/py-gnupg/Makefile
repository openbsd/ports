COMMENT=	Python module for GnuPG interface

MODPY_DISTV=	0.5.6
DISTNAME=	python_gnupg-${MODPY_DISTV}
WRKDIST=	${WRKDIR}/${DISTNAME:S/_/-/}
PKGNAME=	py-gnupg-${MODPY_DISTV}

CATEGORIES=	security devel

HOMEPAGE=	https://github.com/vsajip/python-gnupg

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	security/gnupg
RUN_DEPENDS=	security/gnupg

.include <bsd.port.mk>
