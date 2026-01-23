COMMENT=	print() replacement that can handle data structures

MODPY_DISTV =	2.1.10
GH_ACCOUNT=	gruns
GH_PROJECT=	icecream
GH_TAGNAME=	v${MODPY_DISTV}
DISTNAME=	icecream-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-colorama \
		textproc/py-pygments \
		devel/py-executing \
		devel/py-asttokens

ost-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/tests

.include <bsd.port.mk>
