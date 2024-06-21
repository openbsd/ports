COMMENT=	Python library for building powerful interactive CLI

# check ipython requirements; as of 2024/06, wants <3.1
MODPY_EGG_VERSION=	3.0.47
DISTNAME=	prompt_toolkit-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

EPOCH=		1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/prompt-toolkit/python-prompt-toolkit

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
PORTHOME=	${WRKDIR}

RUN_DEPENDS=	devel/py-wcwidth${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
