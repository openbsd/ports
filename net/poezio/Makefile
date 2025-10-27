COMMENT=	console XMPP client

MODPY_DISTV=	0.13.1
DISTNAME=	poezio-${MODPY_DISTV}
CATEGORIES=	net
REVISION=	6

HOMEPAGE=	https://poez.io/

# zlib
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=-v test/

BUILD_DEPENDS=	lang/cython

RUN_DEPENDS=	devel/desktop-file-utils \
		net/py-aiodns \
		net/py-slixmpp \
		security/py-potr

.include <bsd.port.mk>
