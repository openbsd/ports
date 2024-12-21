COMMENT=	command-line tool for installing Python packages

MODPY_DISTV=	24.3.1

DISTNAME=	pip-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# No test suites in pypi tarball
NO_TEST=	Yes

post-install:
	ln -s pip3 ${PREFIX}/bin/pip${MODPY_VERSION}

.include <bsd.port.mk>
