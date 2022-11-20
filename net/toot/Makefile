COMMENT =		interact with Mastodon social networks from the command line

MODPY_EGG_VERSION =	0.28.1
DISTNAME =		toot-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/ihabunek/toot

MASTER_SITES =		https://github.com/ihabunek/toot/releases/download/${MODPY_EGG_VERSION}/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR}>=0.16 \
			devel/py-wcwidth${MODPY_FLAVOR}>=0.1.7 \
			www/py-beautifulsoup4${MODPY_FLAVOR}>=4.5.0 \
			www/py-requests${MODPY_FLAVOR}>=2.13 \
			devel/py-urwid${MODPY_FLAVOR}>=2.0.0
xxxTEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}>=2.4.0

MAKE_ENV =		LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
