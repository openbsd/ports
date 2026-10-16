COMMENT=	pure-Python implementation of immutable URLs

MODPY_DISTV=	21.0.0
DISTNAME=	hyperlink-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	6

# https://github.com/python-hyper/hyperlink
HOMEPAGE=	https://hyperlink.readthedocs.io/


CATEGORIES=	www

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-hypothesis \
		net/py-idna

.include <bsd.port.mk>
