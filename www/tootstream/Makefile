# $OpenBSD: Makefile,v 1.10 2021/11/02 00:02:56 sthen Exp $

COMMENT =		CLI for interacting with Mastodon/fediverse instances

MODPY_EGG_VERSION =	0.3.8.1
DISTNAME =		tootstream-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://www.github.com/magicalraccoon/tootstream

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		www/py-mastodon.py${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			textproc/py-colored${MODPY_FLAVOR} \
			textproc/py-emoji${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR}

# Doesn't seem to have tests
NO_TEST =		Yes

.include <bsd.port.mk>
