COMMENT=	markdown parsing for Python, port of markdown-it

MODPY_DISTV=	2.2.0
DISTNAME=	markdown-it-py-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/-py//}
CATEGORIES=	textproc
REVISION=	1

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

# not in pypi tarball
NO_TEST=	Yes
RUN_DEPENDS=	textproc/py-mdurl

.include <bsd.port.mk>
