COMMENT=	markdown parsing for Python, port of markdown-it

MODPY_DISTV=	3.0.0
DISTNAME=	markdown-it-py-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/-py//}
CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

# not in pypi tarball
NO_TEST=	Yes
RUN_DEPENDS=	textproc/py-mdurl

.include <bsd.port.mk>
