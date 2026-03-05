COMMENT=	easy, practical library for making terminal apps

MODPY_DISTV=	1.32.0
DISTNAME=	blessed-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/jquast/blessed

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-wcwidth
TEST_DEPENDS=	devel/py-test-cov

pre-test:
	@if ! [ -e /dev/ptyrz ]; then \
		echo "tests are likely to run out of pty devices."; \
		echo "'cd /dev; sh MAKEDEV pty1' to create more."; fi

.include <bsd.port.mk>
