COMMENT=	terminals served to term.js using Tornado websockets

MODPY_DISTV=	0.18.1
DISTNAME=	terminado-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://github.com/takluyver/terminado

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-ptyprocess \
		www/py-tornado
TEST_DEPENDS=	devel/py-test-timeout

.include <bsd.port.mk>
