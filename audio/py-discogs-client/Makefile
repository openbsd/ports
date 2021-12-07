# $OpenBSD: Makefile,v 1.17 2021/12/07 10:47:32 sthen Exp $

COMMENT =	Python interface to Discogs website

MODPY_EGG_VERSION = 2.3.12
DISTNAME =	python3-discogs-client-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/thon3//}
CATEGORIES =	audio
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	https://github.com/joalla/discogs_client

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
