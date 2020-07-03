# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:35 sthen Exp $

COMMENT =	Python interface to Discogs website

MODPY_EGG_VERSION = 2.2.2
REVISION =	1
DISTNAME =	discogs-client-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	https://github.com/discogs/discogs_client

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	discogs_client

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR} \
		security/py-oauthlib${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
