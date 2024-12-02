COMMENT=	print() replacement that can handle data structures

MODPY_EGG_VERSION= 2.1.3
DISTNAME=	icecream-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-colorama${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR} \
		devel/py-executing${MODPY_FLAVOR} \
		devel/py-asttokens${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
