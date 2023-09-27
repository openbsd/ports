COMMENT =		CLI and TUI tool to interact with Mastodon instances

MODPY_EGG_VERSION =	0.38.1
DISTNAME =		toot-${MODPY_EGG_VERSION}

CATEGORIES =		net

# https://github.com/ihabunek/toot
HOMEPAGE =		https://toot.bezdomni.net/

SITES =	https://github.com/ihabunek/toot/releases/download/${MODPY_EGG_VERSION}/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
# skip test which requires a local test instance of mastodon,
# plus databases/py-psycopg2
MODPY_PYTEST_ARGS =	--ignore tests/test_integration.py

RUN_DEPENDS =		devel/py-wcwidth${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			devel/py-urwid${MODPY_FLAVOR} \
			textproc/py-tomlkit${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

MAKE_ENV =		LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
