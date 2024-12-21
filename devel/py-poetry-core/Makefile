COMMENT=	Poetry's PEP517 build backend

MODPY_DISTV=	1.9.1
DISTNAME=	poetry_core-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/python-poetry/poetry-core

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes

MODPY_PYBUILD=	other

TEST_DEPENDS=	devel/py-virtualenv \
		devel/py-test-mock \
		textproc/py-tomli_w

pre-build:
	@if [ -d ${MODPY_SITEPKG}/poetry/core ]; then \
	  echo 'Build may fail ("BackendInvalid") with an older version of poetry-core installed'; \
	fi

.include <bsd.port.mk>
