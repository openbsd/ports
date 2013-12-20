# $OpenBSD: Makefile,v 1.1.1.1 2013/12/20 00:54:05 sthen Exp $

ONLY_FOR_ARCHS =	i386 amd64
DPB_PROPERTIES =	parallel

COMMENT =		headless WebKit scriptable with a JavaScript API

DISTNAME =		phantomjs-1.9.2

CATEGORIES =		www
HOMEPAGE =		http://phantomjs.org/
MAINTAINER =		Francisco de Borja Lopez Rio <borja@codigo23.net>

# phantomjs: BSD, but statically linked to patched qt4 (LGPL) and webkit
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender c fontconfig \
			freetype m pthread stdc++

MASTER_SITES =		http://phantomjs.googlecode.com/files/
EXTRACT_SUFX =		-source.zip

BUILD_DEPENDS =		shells/bash

MAKE_ENV =		C_INCLUDE_PATH=${X11BASE}/include/ \
			CPLUS_INCLUDE_PATH=${X11BASE}/include/ \
                        SUBLIBS=-L${WRKSRC}/src/qt/lib \
			MAKEFLAGS="-j${MAKE_JOBS}" \
			OSTYPE="openbsd"

# Passed via environment rather than on the command line to make
PARALLEL_BUILD =	No

do-configure:
	perl -pi -e 's,^#!/usr/bin/env bash,#!${LOCALBASE}/bin/bash,g' \
		${WRKSRC}/src/qt/preconfig.sh
	@cd ${WRKSRC}/src/qt && env -i ${MAKE_ENV} \
		./preconfig.sh --jobs ${MAKE_JOBS} --qt-config
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ./src/qt/bin/qmake

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/phantomjs ${PREFIX}/bin/phantomjs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/phantomjs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/phantomjs
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/phantomjs
	${INSTALL_DATA} ${WRKSRC}/LICENSE.BSD ${PREFIX}/share/doc/phantomjs

# Tests fail as of version 1.9.2 (in different platforms and OSes)
do-test:
	cd ${WRKSRC}/test && ${WRKSRC}/bin/phantomjs run-tests.js

.include <bsd.port.mk>
