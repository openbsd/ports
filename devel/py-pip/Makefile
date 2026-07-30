COMMENT=	command-line tool for installing Python packages

MODPY_DISTV=	26.2
DISTNAME=	pip-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# https://github.com/pypa/pip
# changelog https://pip.pypa.io/en/stable/news/
HOMEPAGE=	https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

# No test suites in pypi tarball
NO_TEST=	Yes

post-install:
	ln -s pip3 ${PREFIX}/bin/pip${MODPY_VERSION}

.include <bsd.port.mk>
