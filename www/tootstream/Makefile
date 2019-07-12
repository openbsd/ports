# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:06 sthen Exp $

COMMENT =		CLI for interacting with Mastodon/fediverse instances

MODPY_EGG_VERSION =	0.3.6
DISTNAME =		tootstream-${MODPY_EGG_VERSION}
PKGNAME =		tootstream-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://www.github.com/magicalraccoon/tootstream

MAINTAINER =		Kurt Mosiejczuk <kurt@cranky.work>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST =		Yes

RUN_DEPENDS =		www/py-mastodon.py${MODPY_FLAVOR}=1.3.1 \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			textproc/py-colored${MODPY_FLAVOR} \
			textproc/py-emoji${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR}

# Doesn't seem to have tests
NO_TEST =		Yes

.include <bsd.port.mk>
