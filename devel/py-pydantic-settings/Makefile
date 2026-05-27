COMMENT=	settings management using Pydantic

MODPY_DISTV=	2.14.1
DISTNAME=	pydantic_settings-${MODPY_DISTV}
PKGNAME=	py-pydantic-settings-${MODPY_DISTV}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-pydantic \
		devel/py-typing-inspection \
		sysutils/py-dotenv

# also needs at least unported pytest-examples, diff-cover
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-coverage \
		devel/py-test-mock \
		devel/py-test-pretty \
		net/py-moto \
		textproc/py-chardet

.include <bsd.port.mk>
