COMMENT =	Python interface to Discogs website

MODPY_DISTV =	2.7
DISTNAME =	python3-discogs-client-${MODPY_DISTV}
PKGNAME =	${DISTNAME:S/thon3//}
CATEGORIES =	audio
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	1

HOMEPAGE =	https://github.com/joalla/discogs_client

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =	devel/py-dateutil \
		security/py-oauthlib \
		www/py-requests

.include <bsd.port.mk>
