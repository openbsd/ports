# $OpenBSD: Makefile,v 1.1.1.1 2014/05/22 15:06:37 sthen Exp $

COMMENT =	python bindings for Chromaprint and the Acoustid API

MODPY_EGG_VERSION =	1.1.0
DISTNAME =	pyacoustid-${MODPY_EGG_VERSION}
PKGNAME =	py-acoustid-${MODPY_EGG_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://github.com/sampsyo/pyacoustid/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pyacoustid/}

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	audio/chromaprint>=1.1 \
		www/py-requests

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
