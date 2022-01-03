# $OpenBSD: Makefile,v 1.31 2022/01/03 00:39:21 daniel Exp $

COMMENT =	python package to retrieve data of the IMDb movie database

PORTROACH =	site:https://github.com/alberanid/imdbpy/releases/

MODPY_EGG_VERSION = 2021.4.18
DISTNAME =	IMDbPY-${MODPY_EGG_VERSION}
PKGNAME =	py-imdb-${MODPY_EGG_VERSION}

CATEGORIES =	misc devel

HOMEPAGE =	https://imdbpy.github.io/

MAINTAINER =	Todd C. Miller <millert@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread ${MODPY_WANTLIB}

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR}

NO_TEST =	Yes

.include <bsd.port.mk>
