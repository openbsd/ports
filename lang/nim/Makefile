# $OpenBSD: Makefile,v 1.12 2022/02/28 13:16:10 op Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		statically typed, imperative programming language

DISTNAME =		nim-1.6.4
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		lang

HOMEPAGE =		https://nim-lang.org/
MASTER_SITES =		https://nim-lang.org/download/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread

MODULES =		lang/python

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		lang/node

SUBST_VARS +=		CFLAGS

post-patch:
	mkdir -p ${WRKSRC}/nimcache-port
	mkdir -p ${WRKSRC}/nimcache-port-test
	perl -i -pe "s#NIM_PORT_PATH#${PATH}#" ${WRKSRC}/koch.nim
	perl -i -pe "s#NIM_PORT_CACHE#${WRKSRC}/nimcache-port-test#" \
		${WRKSRC}/koch.nim

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/nim.cfg

do-build:
	cd ${WRKSRC} && ${SETENV} CC="${CC}" LINKER="${CC}" \
		COMP_FLAGS="${CPPFLAGS} ${CFLAGS}" LINK_FLAGS="${LDFLAGS}" \
		CFLAGS="${CFLAGS}" sh build.sh
	cd ${WRKSRC} && bin/nim c -d:release --parallelBuild:${MAKE_JOBS} \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}" koch
.for t in boot nimble tools
	cd ${WRKSRC} && ./koch $t -d:release --parallelBuild:${MAKE_JOBS} \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}"
.endfor

do-install:
.for b in nim nimble nimpretty nimgrep nimsuggest testament
	${INSTALL_PROGRAM} ${WRKSRC}/bin/$b ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/lib/nim
	cp -R ${WRKSRC}/lib/* ${PREFIX}/lib/nim
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/nim/pure/unidecode/gen.py
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nim
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nim
	${INSTALL_DATA} ${WRKSRC}/config/*.cfg ${PREFIX}/share/examples/nim

do-test:
	cd ${WRKSRC} && ${SETENV} ${ALL_TEST_ENV} ./koch tests all -d:release \
		--parallelBuild:1 --listFullPaths --listCmd \
		--nimcache:"${WRKSRC}/nimcache-port-test" \
		--putenv:"PATH=${PATH}"

.include <bsd.port.mk>
