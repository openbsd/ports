COMMENT =	Python interface to Discogs website

MODPY_DISTV =	2.8
DISTNAME =	python3_discogs_client-${MODPY_DISTV}
PKGNAME =	py-discogs-client-${MODPY_DISTV}
CATEGORIES =	audio
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

# https://github.com/joalla/discogs_client
HOMEPAGE =	https://python3-discogs-client.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-dateutil \
		security/py-oauthlib \
		www/py-requests

.include <bsd.port.mk>
