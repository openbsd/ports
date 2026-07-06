COMMENT=	console XMPP client

MODPY_DISTV=	0.18
DISTNAME=	poezio-${MODPY_DISTV}
CATEGORIES=	net

HOMEPAGE=	https://poez.io/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=-v test/

BUILD_DEPENDS=	lang/cython

RUN_DEPENDS=	devel/desktop-file-utils \
		net/py-aiodns \
		net/py-slixmpp>=1.14.0 \
		security/py-potr

.include <bsd.port.mk>
