COMMENT=	Python bindings for Chromaprint and the Acoustid API

MODPY_DISTV=	1.3.0
DISTNAME=	pyacoustid-${MODPY_DISTV}
PKGNAME=	py-acoustid-${MODPY_DISTV}
REVISION=	1

CATEGORIES=	audio

HOMEPAGE=	https://github.com/sampsyo/pyacoustid/

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

# can also use python "audioread" module, not yet in ports
RUN_DEPENDS=	audio/chromaprint \
		www/py-requests

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

NO_TEST=	Yes

.include <bsd.port.mk>
