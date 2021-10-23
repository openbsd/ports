# $OpenBSD: Makefile,v 1.30 2021/10/22 19:36:14 sthen Exp $

COMMENT =	python package to retrieve data of the IMDb movie database

PORTROACH =	site:https://github.com/alberanid/imdbpy/releases/

MODPY_EGG_VERSION = 5.0
DISTNAME =	IMDbPY-${MODPY_EGG_VERSION}
PKGNAME =	py-imdb-${MODPY_EGG_VERSION}
CATEGORIES =	misc devel
REVISION =	1

HOMEPAGE =	http://imdbpy.sourceforge.net/

MAINTAINER =	Todd C. Miller <millert@openbsd.org>

# GPL 
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread ${MODPY_WANTLIB}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=imdbpy/}

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	textproc/py-lxml

NO_TEST =	Yes

DOCSDIR =	${PREFIX}/share/doc/py-imdb
EXAMPLESDIR =	${PREFIX}/share/examples/py-imdb

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/README* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${EXAMPLESDIR}
	perl -pi -e 's,#!/usr/bin/env python,#!${MODPY_BIN},' ${EXAMPLESDIR}/*

.include <bsd.port.mk>
