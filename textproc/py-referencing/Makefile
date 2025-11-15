COMMENT=	JSON referencing in Python

MODPY_DISTV=	0.37.0
REVISION=	0
DISTNAME=	referencing-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/python-jsonschema/referencing

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
