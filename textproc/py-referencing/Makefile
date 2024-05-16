COMMENT=	JSON referencing in Python

MODPY_EGG_VERSION=	0.35.1
DISTNAME=	referencing-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

RUN_DEPENDS=	devel/py-attrs${MODPY_FLAVOR} \
		devel/py-rpds-py${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-test-subtests${MODPY_FLAVOR}

.include <bsd.port.mk>
