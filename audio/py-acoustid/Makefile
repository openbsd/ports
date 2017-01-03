# $OpenBSD: Makefile,v 1.5 2017/01/03 19:14:44 landry Exp $

COMMENT =	python bindings for Chromaprint and the Acoustid API

MODPY_EGG_VERSION =	1.1.2
DISTNAME =	pyacoustid-${MODPY_EGG_VERSION}
PKGNAME =	py-acoustid-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	audio

HOMEPAGE =	https://github.com/sampsyo/pyacoustid/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
FLAVORS =	python3
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	audio/chromaprint>=1.1 \
		www/py-requests

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
