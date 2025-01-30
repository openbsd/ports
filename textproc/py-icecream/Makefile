COMMENT=	print() replacement that can handle data structures

MODPY_DISTV=	2.1.4
DISTNAME=	icecream-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-colorama \
		textproc/py-pygments \
		devel/py-executing \
		devel/py-asttokens

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/tests

.include <bsd.port.mk>
