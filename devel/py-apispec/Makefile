COMMENT =		pluggable API specification generator

MODPY_DISTV =		6.8.4
DISTNAME =		apispec-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

RUN_DEPENDS=		devel/py-marshmallow \
			devel/py-openapi-spec-validator \
			textproc/py-yaml

.include <bsd.port.mk>
