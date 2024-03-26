COMMENT=	iCalendar library for Python

MODPY_EGG_VERSION=	0.9.7
DISTNAME=	vobject-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	https://py-vobject.github.io/

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	tests.py

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
