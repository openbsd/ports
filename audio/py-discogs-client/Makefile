COMMENT =	Python interface to Discogs website

MODPY_EGG_VERSION = 2.7
DISTNAME =	python3-discogs-client-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/thon3//}
CATEGORIES =	audio
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	0

HOMEPAGE =	https://github.com/joalla/discogs_client

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		security/py-oauthlib${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
