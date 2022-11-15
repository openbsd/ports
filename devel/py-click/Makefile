COMMENT=	command line library for Python

# a few deprecated things are removed in 8.1 so holding off on that
# for now; other software (especially py-elasticsearch-curator) is
# quite restrictive about click versions
MODPY_EGG_VERSION= 8.0.4
DISTNAME=	click-${MODPY_EGG_VERSION}
PKGNAME=	py-click-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	https://click.palletsprojects.com/

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
