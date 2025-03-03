COMMENT=		low-level, pure Python DBus protocol wrapper

MODPY_DISTV=		0.9.0
DISTNAME=		jeepney-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://gitlab.com/takluyver/jeepney

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PYBUILD=		flit_core
MODPY_PI=		Yes

TEST_DEPENDS=		devel/py-test-trio \
			devel/py-test-asyncio \
			devel/py-testpath \
			devel/py-trio

.include <bsd.port.mk>
