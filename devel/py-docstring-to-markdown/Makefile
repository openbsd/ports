COMMENT =	on the fly conversion of docstrings to markdown

MODPY_DISTV=	0.17
REVISION=	0
DISTNAME=	docstring_to_markdown-${MODPY_DISTV}
PKGNAME=	py-docstring-to-markdown-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/python-lsp/docstring-to-markdown/

# LGPL v2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-importlib-metadata \
		devel/py-typing-extensions
#TEST_DEPENDS=	devel/py-test-flake8

.include <bsd.port.mk>
