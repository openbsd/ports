# $OpenBSD: Makefile,v 1.15 2020/04/17 15:06:57 semarie Exp $

COMMENT =	web out of browsers

MODPY_EGG_VERSION =	2.0
DISTNAME =	weboob-${MODPY_EGG_VERSION}

CATEGORIES =	www
HOMEPAGE =	https://weboob.org

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=	converters/py-html2text${MODPY_FLAVOR} \
		devel/py-babel${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-simplejson${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		net/curl \
		security/gnupg \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-feedparser${MODPY_FLAVOR} \
		textproc/py-prettytable${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-cssselect${MODPY_FLAVOR} \
		textproc/py-unidecode${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS +=	devel/flake8 \
		devel/py-nose${MODPY_FLAVOR} \
		devel/py-coverage${MODPY_FLAVOR} \
		www/py-selenium${MODPY_FLAVOR}

# missing dependencies for test:
#	xunitparser
#	python3-nss
#	PyQt5.QtWebEngineWidgets
#	gtk
#
NO_TEST =	Yes

.include <bsd.port.mk>
