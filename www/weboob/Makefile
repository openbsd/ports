# $OpenBSD: Makefile,v 1.14 2019/07/12 20:51:07 sthen Exp $

COMMENT =	web out of browsers

MODPY_EGG_VERSION =	1.5
DISTNAME =	weboob-${MODPY_EGG_VERSION}

CATEGORIES =	www
HOMEPAGE =	https://weboob.org

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# LGPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://git.weboob.org/weboob/weboob/-/archive/${MODPY_EGG_VERSION}/

MODULES =	lang/python

USE_GMAKE =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_BUILDARGS = --qt --xdg

BUILD_DEPENDS +=	x11/py-qt5${MODPY_FLAVOR}
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		converters/py-html2text${MODPY_FLAVOR} \
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
		www/py-requests${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

TEST_DEPENDS +=	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR} \
		shells/bash

MAKE_ENV +=	PYUIC5_EXECUTABLE=${LOCALBASE}/bin/pyuic5${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC} && exec ${SETENV} ${MAKE_ENV} \
		LC_CTYPE=C.UTF-8 \
		WEBOOB_WORKDIR="${WRKDIR}/weboob-workdir" \
		PYTHON="${MODPY_BIN}" \
		./tools/run_tests.sh --no-modules

.include <bsd.port.mk>
