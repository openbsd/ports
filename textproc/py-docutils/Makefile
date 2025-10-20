COMMENT=	process plaintext documentation into other formats

MODPY_DISTV=	0.22.2
DISTNAME=	docutils-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	https://docutils.sourceforge.io/

# beware new versions often have breaking changes
EPOCH=		0

# mostly public domain, a few files BSD, one .el GPLv3
# see COPYING.rst
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-pygments

.include <bsd.port.mk>
