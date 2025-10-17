COMMENT=	CLI and TUI tool to interact with Mastodon instances

MODPY_DISTV=	0.51.0
DISTNAME=	toot-${MODPY_DISTV}

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

RUN_DEPENDS=	www/py-beautifulsoup4<5 \
		devel/py-click \
		devel/py-dateutil<3 \
		www/py-requests<3 \
		textproc/py-tomlkit<1 \
		devel/py-urwid<4v0 \
		devel/py-wcwidth
TEST_DEPENDS=	devel/py-test-cov

MAKE_ENV=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
