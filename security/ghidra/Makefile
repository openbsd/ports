# $OpenBSD: Makefile,v 1.1.1.1 2019/05/14 07:01:32 rpointel Exp $

# bundled jython has amd64 components for OpenBSD
ONLY_FOR_ARCHS =	amd64

COMMENT =	software reverse engineering (SRE) framework

VERSION = 	9.0.2
DISTNAME =	ghidra_9.0.2_PUBLIC_20190403
PKGNAME =	ghidra-${VERSION}

CATEGORIES =	security

HOMEPAGE =	https://www.ghidra-sre.org/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

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
