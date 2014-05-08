# $OpenBSD: Makefile,v 1.2 2014/05/08 01:05:50 jturner Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		statically typed, imperative programming language

VERSION =		0.9.4
DISTNAME =		nimrod-${VERSION}

DISTFILES =		${DISTNAME}{v${VERSION}}.tar.gz \
			nimrod-c-${VERSION}{v${VERSION}}.tar.gz:0

CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://nimrod-lang.org/
MASTER_SITES =		https://github.com/Araq/Nimrod/archive/
MASTER_SITES0 =		https://github.com/nimrod-code/csources/archive/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

WRKDIST =		${WRKDIR}/Nimrod-${VERSION}
NO_TEST =		Yes

post-extract:
	@mv ${WRKDIR}/csources-${VERSION} ${WRKSRC}/csources

do-build:
	cd ${WRKSRC}/csources && ${SETENV} CC="${CC}" LINKER="${CC}" \
		COMP_FLAGS="${CFLAGS}" sh build.sh
	# slow machines can get a head of themselves and fail to link
	cd ${WRKSRC} && ${SETENV} bin/nimrod c --parallelBuild:1 koch
	cd ${WRKSRC} && ${SETENV} ./koch boot -d:release --parallelBuild:1

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/nimrod ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/nimrod
	rm ${WRKSRC}/lib/posix/posix.nim.orig
	cp -R ${WRKSRC}/lib/* ${PREFIX}/lib/nimrod
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/nimrod
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nimrod
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/nimrod
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nimrod
	${INSTALL_DATA} ${WRKSRC}/config/*.cfg ${PREFIX}/share/examples/nimrod

.include <bsd.port.mk>
