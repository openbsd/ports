COMMENT=	JSON referencing in Python

MODPY_DISTV=	0.35.1
DISTNAME=	referencing-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

RUN_DEPENDS=	devel/py-attrs \
		devel/py-rpds-py

TEST_DEPENDS=	devel/py-jsonschema \
		devel/py-test-subtests

.include <bsd.port.mk>
