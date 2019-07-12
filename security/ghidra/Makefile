# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:02 sthen Exp $

# bundled jython has amd64 components for OpenBSD
ONLY_FOR_ARCHS =	amd64

COMMENT =	software reverse engineering (SRE) framework

VERSION = 	9.0.4
REVISION =	0
DISTNAME =	ghidra_9.0.4_PUBLIC_20190516
PKGNAME =	ghidra-${VERSION}

CATEGORIES =	security

HOMEPAGE =	https://www.ghidra-sre.org/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

EXTRACT_SUFX =		.zip

MODULES =		java
MODJAVA_VER =		11+

RUN_DEPENDS =		shells/bash \
			java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =	${WRKDIR}/${PKGNAME:S/-/_/}

post-extract:
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/ghidraRun
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/support/launch.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/ghidra
	cp -r ${WRKSRC}/*  ${PREFIX}/share/java/ghidra/
	ln -s ${TRUEPREFIX}/share/java/ghidra/ghidraRun ${PREFIX}/bin/ghidraRun

.include <bsd.port.mk>
