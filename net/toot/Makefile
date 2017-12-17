# $OpenBSD: Makefile,v 1.1.1.1 2017/12/17 21:03:54 danj Exp $

COMMENT =		interact with Mastodon social networks from the command line

MODPY_EGG_VERSION =	0.15.1
GH_ACCOUNT =		ihabunek
GH_PROJECT =		toot
GH_TAGNAME =		${MODPY_EGG_VERSION}

CATEGORIES =		net

MAINTAINER =		Klemens Nanni <kl3@posteo.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR}>=0.16 \
			www/py-beautifulsoup4${MODPY_FLAVOR}>=4.5.0,<5.0 \
			www/py-requests${MODPY_FLAVOR}>=2.13,<3.0
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}>=3.0.0 \
			devel/py-test-cov${MODPY_FLAVOR}>=2.4.0

MAKE_ENV =		LC_CTYPE=C.UTF-8

do-test:
	make -C ${WRKSRC} coverage

.include <bsd.port.mk>
