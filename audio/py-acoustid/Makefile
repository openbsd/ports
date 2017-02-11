# $OpenBSD: Makefile,v 1.6 2017/02/11 20:28:26 danj Exp $

COMMENT =	python bindings for Chromaprint and the Acoustid API

MODPY_EGG_VERSION =	1.1.4
DISTNAME =	pyacoustid-${MODPY_EGG_VERSION}
PKGNAME =	py-acoustid-${MODPY_EGG_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://github.com/sampsyo/pyacoustid/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
FLAVORS =	python3
FLAVOR ?=
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	audio/chromaprint>=1.1 \
		www/py-requests${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

# needs audioread
NO_TEST=	Yes

.include <bsd.port.mk>
