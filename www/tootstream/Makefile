# $OpenBSD: Makefile,v 1.5 2019/09/09 21:36:14 kmos Exp $

COMMENT =		CLI for interacting with Mastodon/fediverse instances

MODPY_EGG_VERSION =	0.3.7
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
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		www/py-mastodon.py>=1.4.5,<1.5.0 \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			textproc/py-colored${MODPY_FLAVOR} \
			textproc/py-emoji${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR}

# Doesn't seem to have tests
NO_TEST =		Yes

.include <bsd.port.mk>
