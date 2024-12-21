COMMENT =		CLI for interacting with Mastodon/fediverse instances

MODPY_DISTV =	0.3.8.1
DISTNAME =		tootstream-${MODPY_DISTV}
REVISION =		6

CATEGORIES =		www

HOMEPAGE =		https://www.github.com/magicalraccoon/tootstream

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		www/py-mastodon.py \
			devel/py-click \
			devel/py-dateutil \
			textproc/py-colored>=2.0 \
			textproc/py-emoji \
			textproc/py-humanize

# Doesn't seem to have tests
NO_TEST =		Yes

.include <bsd.port.mk>
