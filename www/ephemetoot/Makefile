COMMENT =		tool for deleting old Mastodon toots

MODPY_EGG_VERSION =	3.1.3
DISTNAME =		ephemetoot-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		textproc/py-yaml${MODPY_FLAVOR}>=5.0 \
			www/py-mastodon.py${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
