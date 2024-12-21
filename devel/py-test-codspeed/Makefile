COMMENT=	pytest plugin to create CodSpeed benchmarks

MODPY_DISTV=	3.0.0
DISTNAME=	pytest_codspeed-${MODPY_DISTV}
PKGNAME=	py-test-codspeed-${MODPY_DISTV}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://github.com/CodSpeedHQ/pytest-codspeed

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-cffi \
		devel/py-rich \
		devel/py-setuptools \
		devel/py-test \
		sysutils/py-filelock

.include <bsd.port.mk>
