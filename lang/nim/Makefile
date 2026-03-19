ONLY_FOR_ARCHS =	amd64 arm64 i386

COMMENT =		statically typed systems programming language

DISTNAME =		nim-2.2.8
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		lang

HOMEPAGE =		https://nim-lang.org/
SITES =			${HOMEPAGE}download/

MAINTAINER =		Alfred Morgan <alfred@54.org>

NIMBLE_CHECKSUMS_V =	0b8e46379c5bc1bf73d8b3011908389c60fb9b98
NIMBLE_ZIPPY_V =	a99f6a7d8a8e3e0213b3cad0daf0ea974bf58e3f

DIST_TUPLE =		github nim-lang atlas ff1f4289482dce94ba9f95b3b0ae16d16e21eb3d .
DIST_TUPLE +=		github nim-lang nimble 9207e8b2bbdf66b5a4d1020214cff44d2d30df92 .
DIST_TUPLE +=		github nim-lang sat e63eaea8baf00bed8bcd5a29ffd8823abb265b39 .
DIST_TUPLE +=		github nim-lang checksums ${NIMBLE_CHECKSUMS_V} .
DIST_TUPLE +=		github guzba zippy ${NIMBLE_ZIPPY_V} .

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread

MODULES =		lang/python

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		archivers/p7zip,-main \
			archivers/unzip \
			devel/boehm-gc \
			devel/pcre \
			lang/node \
			multimedia/sfml

SUBST_VARS +=		CFLAGS

post-extract:
	rm -R ${WRKDIST}/dist/nimble
	rm -R ${WRKDIST}/dist/checksums
	mv ${WRKDIR}/nimble-* ${WRKDIST}/dist/nimble
	rm -R ${WRKDIST}/dist/nimble/vendor/{checksums,zippy}
	cp -r ${WRKDIR}/checksums-${NIMBLE_CHECKSUMS_V} \
		${WRKDIST}/dist/nimble/vendor/checksums
	mv ${WRKDIR}/zippy-${NIMBLE_ZIPPY_V} \
		${WRKDIST}/dist/nimble/vendor/zippy
	cp -r ${WRKDIR}/sat-*/* \
		${WRKDIST}/dist/nimble/vendor/sat/
	mv ${WRKDIR}/checksums-* ${WRKDIST}/dist/checksums
	mv ${WRKDIR}/atlas-* ${WRKDIST}/dist/atlas
	mkdir -p ${WRKDIST}/dist/atlas/dist
	mv ${WRKDIR}/sat-* ${WRKDIST}/dist/atlas/dist/sat

post-patch:
	mkdir -p ${WRKSRC}/nimcache-port
	mkdir -p ${WRKSRC}/nimcache-port-test
	perl -i -pe "s#NIM_PORT_PATH#${PATH}#" ${WRKSRC}/koch.nim
	perl -i -pe "s#NIM_PORT_CACHE#${WRKSRC}/nimcache-port-test#" \
		${WRKSRC}/koch.nim

pre-configure:
	${SUBST_CMD} ${WRKSRC}/compiler/options.nim
	${SUBST_CMD} ${WRKSRC}/config/nim.cfg

do-build:
	cd ${WRKSRC} && ${SETENV} CC="${CC}" LINKER="${CC}" \
		COMP_FLAGS="${CPPFLAGS} ${CFLAGS}" LINK_FLAGS="${LDFLAGS}" \
		CFLAGS="${CFLAGS}" sh build.sh
	cd ${WRKSRC} && bin/nim c -d:release --parallelBuild:${MAKE_JOBS} \
		--lib:lib --noNimblePath --skipUserCfg --skipParentCfg --hints:off \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}" koch
.for t in boot nimble tools
	cd ${WRKSRC} && ./koch $t -d:release --parallelBuild:${MAKE_JOBS} \
		--lib:lib --skipUserCfg --skipParentCfg --hints:off \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}"
.endfor

do-install:
.for b in atlas nim nimble nimgrep nimpretty nimsuggest testament
	${INSTALL_PROGRAM} ${WRKSRC}/bin/$b ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/lib/nim
	cp -R ${WRKSRC}/lib/* ${PREFIX}/lib/nim
	${MODPY_COMPILEALL} ${PREFIX}/lib/nim/pure/unidecode/gen.py
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nim
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nim
	${INSTALL_DATA} ${WRKSRC}/config/*.cfg ${PREFIX}/share/examples/nim

# note that for some tests an internet connection is required
do-test:
	cd ${WRKSRC} && ${SETENV} ${ALL_TEST_ENV} ./koch tests all -d:release \
		--parallelBuild:1 \
		--nimcache:"${WRKSRC}/nimcache-port-test" \
		--putenv:"PATH=${PATH}"

.include <bsd.port.mk>
