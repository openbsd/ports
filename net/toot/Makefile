# $OpenBSD: Makefile,v 1.12 2019/09/22 15:34:27 kn Exp $

COMMENT =		interact with Mastodon social networks from the command line

MODPY_EGG_VERSION =	0.24.0
REVISION =		0
DISTNAME =		toot-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/ihabunek/toot

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MASTER_SITES =		https://github.com/ihabunek/toot/releases/download/${MODPY_EGG_VERSION}/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR}>=0.16 \
			devel/py-wcwidth${MODPY_FLAVOR}>=0.1.7 \
			www/py-beautifulsoup4${MODPY_FLAVOR}>=4.5.0 \
			www/py-requests${MODPY_FLAVOR}>=2.13 \
			devel/py-urwid${MODPY_FLAVOR}>=2.0.0
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-test${MODPY_FLAVOR}>=3.0.0 \
			devel/py-test-cov${MODPY_FLAVOR}>=2.4.0

MAKE_ENV =		LC_CTYPE=C.UTF-8

do-test:
	cd ${WRKSRC} && py.test${MODPY_BIN_SUFFIX} --cov=toot tests/

.include <bsd.port.mk>
