COMMENT =		CLI and TUI tool to interact with Mastodon instances

MODPY_EGG_VERSION =	0.43.0
DISTNAME =		toot-${MODPY_EGG_VERSION}

CATEGORIES =		net

# https://github.com/ihabunek/toot
HOMEPAGE =		https://toot.bezdomni.net/

SITES =	https://github.com/ihabunek/toot/releases/download/${MODPY_EGG_VERSION}/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
# skip tests which require a local test instance of mastodon,
# plus databases/py-psycopg2
# also richtext tests, requiring "urwidgets" (not urwid)
MODPY_PYTEST_ARGS =	--ignore tests/integration \
			--ignore tests/tui/test_rich_text.py

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			devel/py-wcwidth${MODPY_FLAVOR} \
			devel/py-urwid${MODPY_FLAVOR} \
			textproc/py-tomlkit${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

MAKE_ENV =		LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
