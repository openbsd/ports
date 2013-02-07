# $OpenBSD: Makefile,v 1.9 2013/02/07 15:22:58 stu Exp $

COMMENT =	Tcl implementation for the CLR

V =		1.0
P =		4691.37889
DISTNAME =	eagle-${V}
PKGNAME =	${DISTNAME}-beta26
CATEGORIES =	lang lang/tcl
HOMEPAGE =	http://eagle.to/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=eagle/} \
		${HOMEPAGE:=releases/${V}.${P}/} \
		http://distfiles.nl/
DISTFILES =	EagleBinaryMonoOnUnix${V}.${P}.rar
EXTRACT_CASES =	*.rar) ${LOCALBASE}/bin/unrar x -idq ${DISTDIR}/$$archive;;

MODULES =	lang/mono
MODMONO_DEPS =	No

BUILD_DEPENDS =	archivers/unrar
RUN_DEPENDS =	${MODMONO_RUN_DEPENDS}
REGRESS_DEPENDS=${MODMONO_RUN_DEPENDS}

REGRESS_IS_INTERACTIVE = X11

NO_BUILD =	Yes
WRKSRC =	${WRKDIR}/Eagle

EAGLE_DIR =	libdata/Eagle
EAGLE_INS_DIR = ${PREFIX}/${EAGLE_DIR}
EAGLE_BIN_DIR =	${EAGLE_INS_DIR}/bin
EAGLE_LIB_DIR =	${EAGLE_INS_DIR}/lib/Eagle${V}
EAGLE_BIN =	${PREFIX}/bin/eagle

# Some tests are too timing-sensitive to succeed everywhere so don't run them
EAGLE_REGRESS_FLAGS = -notFile 'benchmark.eagle delayout.eagle perf*.eagle'

do-install:
	${INSTALL_DATA_DIR} ${EAGLE_BIN_DIR} ${EAGLE_LIB_DIR}
.for SRC GLOB DEST in \
		bin		*		${EAGLE_BIN_DIR} \
		lib/Eagle${V}	*		${EAGLE_LIB_DIR} \
		.		license.terms	${EAGLE_INS_DIR}

	${INSTALL_DATA} ${WRKSRC}/${SRC}/${GLOB} ${DEST}
.endfor
	echo '#! /bin/sh' > ${EAGLE_BIN}
	echo 'exec mono ${TRUEPREFIX}/${EAGLE_DIR}/bin/EagleShell.exe $${1+"$$@"}' >> ${EAGLE_BIN}
	chown ${BINOWN}:${BINGRP} ${EAGLE_BIN}
	chmod ${BINMODE} ${EAGLE_BIN}

do-regress:
	${SETENV} ${MAKE_ENV} ${ALL_REGRESS_FLAGS} \
	${LOCALBASE}/bin/mono ${WRKSRC}/bin/EagleShell.exe \
	-preInitialize 'set test_log {}' \
	-file ${WRKSRC}/Tests/all.eagle \
	${EAGLE_REGRESS_FLAGS}

.include <bsd.port.mk>
