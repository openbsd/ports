ONLY_FOR_ARCHS =	amd64 arm64 i386

COMMENT =		statically typed systems programming language

DISTNAME =		nim-2.2.10
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		lang

HOMEPAGE =		https://nim-lang.org/
SITES =			${HOMEPAGE}download/

MAINTAINER =		Alfred Morgan <alfred@54.org>

NIMBLE_CHECKSUMS_V =	f8f6bd34bfa3fe12c64b919059ad856a96efcba0
NIMBLE_ZIPPY_V =	a99f6a7d8a8e3e0213b3cad0daf0ea974bf58e3f
NIMBLE_CHRONOS_V =	0646c444fce7c7ed08ef6f2c9a7abfd172ffe655
NIMBLE_RESULTS_V =	df8113dda4c2d74d460a8fa98252b0b771bf1f27
NIMBLE_STEW_V =	b66168735d6f3841c5239c3169d3fe5fe98b1257

DIST_TUPLE =		github nim-lang atlas 0.14.7 .
DIST_TUPLE +=		github nim-lang nimble 42ef70c2102a942c46f13eb76872326edd525cec .
DIST_TUPLE +=		github status-im nim-chronos ${NIMBLE_CHRONOS_V} .
DIST_TUPLE +=		github arnetheduck nim-results ${NIMBLE_RESULTS_V} .
DIST_TUPLE +=		github status-im nim-stew ${NIMBLE_STEW_V} .
DIST_TUPLE +=		github nim-lang sat e63eaea8baf00bed8bcd5a29ffd8823abb265b39 .
DIST_TUPLE +=		github nim-lang checksums ${NIMBLE_CHECKSUMS_V} .
DIST_TUPLE +=		github guzba zippy ${NIMBLE_ZIPPY_V} .

# MIT, BSD, Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto m pthread ssl

ATLAS_SSL_FLAGS =	-d:libressl --dynlibOverride:ssl \
			--passl:-lssl --passl:-lcrypto

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
	rm -R ${WRKDIST}/dist/nimble/vendor/{checksums,chronos,results,stew,zippy}
	cp -r ${WRKDIR}/checksums-${NIMBLE_CHECKSUMS_V} \
		${WRKDIST}/dist/nimble/vendor/checksums
	mv ${WRKDIR}/nim-chronos-${NIMBLE_CHRONOS_V} \
		${WRKDIST}/dist/nimble/vendor/chronos
	mv ${WRKDIR}/nim-results-${NIMBLE_RESULTS_V} \
		${WRKDIST}/dist/nimble/vendor/results
	mv ${WRKDIR}/nim-stew-${NIMBLE_STEW_V} \
		${WRKDIST}/dist/nimble/vendor/stew
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
	mkdir -p ${WRKSRC}/nimcache-port-test-compiler
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
.for t in boot nimble toolsnoexternal
	cd ${WRKSRC} && ./koch $t -d:release --parallelBuild:${MAKE_JOBS} \
		--lib:lib --skipUserCfg --skipParentCfg --hints:off \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}"
.endfor

	cd ${WRKSRC} && ./koch atlas -d:release --parallelBuild:${MAKE_JOBS} \
		--lib:lib --skipUserCfg --skipParentCfg --hints:off \
		--nimcache:"${WRKSRC}/nimcache-port" --listFullPaths \
		--listCmd --putenv:"PATH=${PATH}" ${ATLAS_SSL_FLAGS}

	cd ${WRKSRC} && bin/nim c -o:bin/atlas-run -d:release \
		--noNimblePath --lib:lib -d:nimAtlasBootstrap ${ATLAS_SSL_FLAGS} \
		dist/atlas/src/atlasrun.nim

do-install:
.for b in atlas atlas-run nim nimble nimgrep nimpretty nimsuggest testament
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
# Testament's all and pcat dispatch each consume one leading compiler option.
do-test:
	cd ${WRKSRC} && bin/nim c -o:${WRKSRC}/bin/nim-test \
		-d:release -d:nimPortLibpath=${WRKSRC}/lib \
		--lib:lib --noNimblePath --skipUserCfg --skipParentCfg \
		--hints:off --parallelBuild:1 \
		--nimcache:"${WRKSRC}/nimcache-port-test-compiler" \
		compiler/nim.nim
	cd ${WRKSRC} && ${SETENV} ${ALL_TEST_ENV} ./koch \
		--nim:${WRKSRC}/bin/nim-test tests all \
		--hints:off --hints:off -d:release --hints:off \
		--parallelBuild:1 \
		--nimcache:"${WRKSRC}/nimcache-port-test" \
		--putenv:"PATH=${PATH}"

.include <bsd.port.mk>
