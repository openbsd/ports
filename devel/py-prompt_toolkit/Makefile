COMMENT=	Python library for building powerful interactive CLI

# check ipython requirements; as of 2024/06, wants <3.1
MODPY_DISTV=	3.0.50
DISTNAME=	prompt_toolkit-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/prompt-toolkit/python-prompt-toolkit

EPOCH=		1

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

PORTHOME=	${WRKDIR}

RUN_DEPENDS=	devel/py-wcwidth \
		textproc/py-pygments

.include <bsd.port.mk>
