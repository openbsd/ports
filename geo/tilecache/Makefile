# $OpenBSD: Makefile,v 1.13 2014/08/14 07:06:00 ajacoutot Exp $

COMMENT =	tile caching frontend for WMS/TMS services

MODPY_EGG_VERSION =	2.11
DISTNAME =	tilecache-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	geo graphics

HOMEPAGE =	http://tilecache.org/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		graphics/py-Pillow \
			www/py-paste

post-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/tilecache/
	mv ${PREFIX}/bin/tilecache.{f,}cgi ${PREFIX}/libexec/tilecache/

.include <bsd.port.mk>
