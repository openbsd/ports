COMMENT=	library for reading music meta data

MODPY_DISTV=	2.2.1
GH_ACCOUNT=	tinytag
GH_PROJECT=	tinytag
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	audio textproc

HOMEPAGE=	https://github.com/tinytag/tinytag

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core

post-install:
	rm -r ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/tinytag/tests/
#NO_TEST=	Yes

.include <bsd.port.mk>
