COMMENT=	iCalendar library for Python

MODPY_DISTV=	0.9.9
DISTNAME=	vobject-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc devel

HOMEPAGE=	https://py-vobject.github.io/

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	tests.py

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-dateutil \
		devel/py-six

.include <bsd.port.mk>
