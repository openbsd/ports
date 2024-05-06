COMMENT=	Python bindings for Chromaprint and the Acoustid API

MODPY_EGG_VERSION=	1.3.0
DISTNAME=	pyacoustid-${MODPY_EGG_VERSION}
PKGNAME=	py-acoustid-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	audio

HOMEPAGE=	https://github.com/sampsyo/pyacoustid/

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	setuptools

# can also use python "audioread" module, not yet in ports
RUN_DEPENDS=	audio/chromaprint \
		www/py-requests${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

NO_TEST=	Yes

.include <bsd.port.mk>
