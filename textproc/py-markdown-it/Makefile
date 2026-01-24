COMMENT=	markdown parsing for Python, port of markdown-it

MODPY_DISTV=	4.0.0
DISTNAME=	markdown_it_py-${MODPY_DISTV}
PKGNAME=	py-markdown-it-${MODPY_DISTV}
CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

# not in pypi tarball
NO_TEST=	Yes
RUN_DEPENDS=	textproc/py-mdurl

.include <bsd.port.mk>
