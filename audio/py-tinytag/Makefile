COMMENT=	library for reading music meta data

MODPY_DISTV=	2.3.1
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
	rm -r ${WRKINST}${MODPY_SITEPKG}/tinytag/tests/

.include <bsd.port.mk>
