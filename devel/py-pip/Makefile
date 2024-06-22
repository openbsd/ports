COMMENT=	command-line tool for installing Python packages

MODPY_EGG_VERSION=	24.1
REVISION=	0

DISTNAME=	pip-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

# No test suites in pypi tarball
NO_TEST=	Yes

post-install:
	ln -s pip3 ${PREFIX}/bin/pip${MODPY_VERSION}

.include <bsd.port.mk>
