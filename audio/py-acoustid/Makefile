#g $OpenBSD: Makefile,v 1.18 2021/11/02 00:00:13 sthen Exp $

COMMENT =	python bindings for Chromaprint and the Acoustid API

MODPY_EGG_VERSION =	1.2.2
DISTNAME =	pyacoustid-${MODPY_EGG_VERSION}
PKGNAME =	py-acoustid-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	audio

HOMEPAGE =	https://github.com/sampsyo/pyacoustid/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	audio/chromaprint \
		www/py-requests${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

# needs audioread
#NO_TEST=	Yes

.include <bsd.port.mk>
