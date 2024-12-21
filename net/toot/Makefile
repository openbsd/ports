COMMENT=	CLI and TUI tool to interact with Mastodon instances

MODPY_DISTV=	0.47.1
DISTNAME=	toot-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	net

# https://github.com/ihabunek/toot
HOMEPAGE=	https://toot.bezdomni.net/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
# skip tests which require a local test instance of mastodon,
# plus databases/py-psycopg2
# also richtext tests, requiring "urwidgets" (not urwid)
MODPY_PYTEST_ARGS=	--ignore tests/integration \
			--ignore tests/tui/test_rich_text.py

RUN_DEPENDS=	devel/py-click \
		www/py-requests \
		www/py-beautifulsoup4 \
		devel/py-wcwidth \
		devel/py-urwid \
		textproc/py-tomlkit
TEST_DEPENDS=	devel/py-test-cov

MAKE_ENV=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
