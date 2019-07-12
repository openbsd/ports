# $OpenBSD: Makefile,v 1.24 2019/07/12 20:47:17 sthen Exp $

COMMENT =	Tcl implementation for the CLR

V =		1.0
P =		6781.49000
DISTNAME =	eagle-${V}
PKGNAME =	${DISTNAME}beta42
EPOCH =		0
CATEGORIES =	lang lang/tcl
HOMEPAGE =	https://eagle.to/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=eagle/} \
		https://download.eagle.to/releases/${V}.${P}/ \
		https://distfiles.nl/

DISTFILES =	EagleBinaryMonoOnUnix${V}.${P}.rar
EXTRACT_CASES =	*.rar) ${LOCALBASE}/bin/unrar x -idq ${DISTDIR}/$$archive;;

MODULES =	lang/mono
MODMONO_DEPS =	No

BUILD_DEPENDS =	archivers/unrar
RUN_DEPENDS =	${MODMONO_RUN_DEPENDS}
TEST_DEPENDS =	${MODMONO_RUN_DEPENDS}

TEST_IS_INTERACTIVE = X11

NO_BUILD =	Yes
WRKSRC =	${WRKDIR}/Eagle

EAGLE_DIR =	libdata/Eagle
EAGLE_INS_DIR = ${PREFIX}/${EAGLE_DIR}
EAGLE_BIN_DIR =	${EAGLE_INS_DIR}/bin
EAGLE_LIB_DIR =	${EAGLE_INS_DIR}/lib
EAGLE_BIN =	${PREFIX}/bin/eagle

# Skip tests that are too timing-sensitive to succeed everywhere
EAGLE_TEST_FLAGS = -notFile 'benchmark.eagle perf*.eagle'

# Skip tests that may hang or fail
EAGLE_TEST_FLAGS += -skip 'interp-1.80? socket-2.2'

# "-namespaces 1" enables namespace tests
# "set no(bigLists) 1" avoids oom problems
# "set no(exec) 1; set no(compileCSharp) 1" to work around Mono bugs
# "set no(tcl) 1" ignores any installed Tcl
# "set test_log {}" disables logging test results to a file
# "set no(failLogStartSentry) 1" disables Eagle test log sentry checking

do-test:
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${LOCALBASE}/bin/mono ${WRKSRC}/bin/EagleShell.exe \
	-namespaces 1 \
	-preInitialize 'set no(bigLists) 1; set no(exec) 1; set no(compileCSharp) 1; set no(tcl) 1' \
	-preInitialize 'set test_log {}; set no(failLogStartSentry) 1' \
	-file ${WRKSRC}/Tests/all.eagle \
	${EAGLE_TEST_FLAGS}

do-install:
.for SRC GLOB DEST in \
		.		license.terms	${EAGLE_INS_DIR} \
		bin		*		${EAGLE_BIN_DIR} \
		lib/Eagle${V}	*		${EAGLE_LIB_DIR}/Eagle${V} \
		lib/Test${V}	*		${EAGLE_LIB_DIR}/Test${V}

	${INSTALL_DATA_DIR} ${DEST}
	${INSTALL_DATA} ${WRKSRC}/${SRC}/${GLOB} ${DEST}
.endfor
	echo '#! /bin/sh' > ${EAGLE_BIN}
	echo 'exec mono ${TRUEPREFIX}/${EAGLE_DIR}/bin/EagleShell.exe $${1+"$$@"}' >> ${EAGLE_BIN}
	chown ${BINOWN}:${BINGRP} ${EAGLE_BIN}
	chmod ${BINMODE} ${EAGLE_BIN}
	rm ${EAGLE_BIN_DIR}/EagleShell32.exe

.include <bsd.port.mk>
