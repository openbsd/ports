# $OpenBSD: Makefile,v 1.10 2019/08/31 15:36:56 sthen Exp $

ONLY_FOR_ARCHS =	i386 amd64

BROKEN-i386 = hardcodes gcc; see config/nim.cfg

COMMENT =		statically typed, imperative programming language

VERSION =		0.16.0
DISTNAME =		nim-${VERSION}
EXTRACT_SUFX =		.tar.xz
REVISION =		0

CATEGORIES =		lang

HOMEPAGE =		http://nim-lang.org/
MASTER_SITES =		http://nim-lang.org/download/ \
			https://download.tuxfamily.org/jod/lang/nim/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c m

post-patch:
	mkdir -p ${WRKSRC}/nimcache-port
	mkdir -p ${WRKSRC}/nimcache-port-test
	perl -i -pe "s#NIM_PORT_PATH#${PATH}#" ${WRKSRC}/koch.nim
	perl -i -pe "s#NIM_PORT_CACHE#${WRKSRC}/nimcache-port-test#" \
		${WRKSRC}/koch.nim

do-build:
	cd ${WRKSRC} && ${SETENV} CC="${CC}" LINKER="${CC}" \
		CFLAGS="${CFLAGS}" sh build.sh
	# slow machines can get a head of themselves and fail to link
	cd ${WRKSRC} && bin/nim c -d:release --parallelBuild:1 \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}" koch
	cd ${WRKSRC} && ./koch boot -d:release --parallelBuild:1 \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}"

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/nim ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/nim
	cp -R ${WRKSRC}/lib/* ${PREFIX}/lib/nim
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nim
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nim
	${INSTALL_DATA} ${WRKSRC}/config/*.cfg ${PREFIX}/share/examples/nim

do-test:
	cd ${WRKSRC} && ${SETENV} ./koch test all -d:release \
		--parallelBuild:1 --listFullPaths --listCmd \
		--nimcache:"${WRKSRC}/nimcache-port-test" \
		--putenv:"PATH=${PATH}"

.include <bsd.port.mk>
