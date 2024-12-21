COMMENT=	print() replacement that can handle data structures

MODPY_DISTV=	2.1.3
REVISION=	1
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

.include <bsd.port.mk>
