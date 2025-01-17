COMMENT=	JSON referencing in Python

MODPY_DISTV=	0.36.1
DISTNAME=	referencing-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/python-jsonschema/referencing

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

# devel/py-typing-extensions needed for py < 3.13
RUN_DEPENDS=	devel/py-attrs \
		devel/py-rpds-py \
		devel/py-typing-extensions

TEST_DEPENDS=	devel/py-jsonschema \
		devel/py-test-subtests

.include <bsd.port.mk>
