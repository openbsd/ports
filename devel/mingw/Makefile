# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:42 sthen Exp $

COMMENT =	development environment for native Windows applications

V = 		1.0.1
REVISION =	7
BASENAME =	x86-mingw32-build
DISTNAME =	${BASENAME}-${V}-sh
PKGNAME =	mingw-${V}
WRKDIST =	${WRKDIR}/${BASENAME}-${V}
CATEGORIES =	devel

HOMEPAGE =	http://www.mingw.org/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Headers: public domain
# Compiler/toolchain: GPL
PERMIT_PACKAGE =		Yes

WANTLIB += c z
USE_GMAKE =	Yes
NO_TEST =	Yes

EXTRACT_SUFX =	.tar.bz2
EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} ${TOOLCHAIN}

# In binutils, ld/scripttempl/pe.sc requires bash to do string replacement.
BUILD_DEPENDS =	shells/bash

# some script will get gsed if it's around, don't fight it
BUILD_DEPENDS += textproc/gsed

SCRIPT_MASTER = files/Other/Cross-Hosted%20MinGW%20Build%20Tool/${BASENAME}-${V}
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mingw/}${SCRIPT_MASTER}-rc1/

TOOL_SUFX =	.tar.gz
TOOL_MASTER = ${MASTER_SITE_SOURCEFORGE:=mingw/}files/MinGW/Base/

TOOL_GCC =	gcc-core-3.4.5-20060117-2
MASTER_SITES0 = ${TOOL_MASTER}gcc/Version3/Previous%20Release_%20${TOOL_GCC}/

TOOL_BINUTILS =	binutils-2.20.1
MASTER_SITES1 = ${TOOL_MASTER}binutils/${TOOL_BINUTILS}/

TOOL_WRT =	mingwrt-3.18
MASTER_SITES2 = ${TOOL_MASTER}mingw-rt/${TOOL_WRT}/

TOOL_W32API =	w32api-3.14
MASTER_SITES3 = ${TOOL_MASTER}w32api/${TOOL_W32API}/

TOOL_G++ =	gcc-g++-3.4.5-20060117-2
MASTER_SITES4 =	${TOOL_MASTER}g++/Version3/Previous%20Release_%20${TOOL_G++}/

TOOLCHAIN =	${TOOL_BINUTILS}-src${TOOL_SUFX}:0			\
		${TOOL_GCC}-src${TOOL_SUFX}:1				\
		${TOOL_WRT}-mingw32-src${TOOL_SUFX}:2			\
		${TOOL_W32API}-mingw32-src${TOOL_SUFX}:3		\
		${TOOL_G++}-src${TOOL_SUFX}:4

MINGW32_TMP =	${WRKBUILD}/tmp
MINGW32_OUT =	${WRKBUILD}/out
MINGW32_DIR =	${WRKINST}/${LOCALBASE}/mingw32

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
do-configure:
	echo "option CFLAGS_FOR_BINUTILS -fbracket-depth=1024"   >>${WRKSRC}/x86-mingw32-build.sh.conf

# XXX mingw really prefers gcc-named compilers, so let's cheat!!!
COMPILER_LINKS += gcc /usr/bin/clang g++ /usr/bin/clang++

.endif


do-build:
	env MINGW32_TMP=${MINGW32_TMP} FULLDISTDIR=${FULLDISTDIR} \
	    MINGW32_OUT=${MINGW32_OUT} MAKE=${MAKE_PROGRAM} \
	    CONFIG_SHELL=${LOCALBASE}/bin/bash \
	    AWK=/usr/bin/awk \
	    PATH=${PORTPATH} \
	    OPENBSD_PATCH_DIR=${PATCHDIR} \
	    ac_cv_path_mkdir=/bin/mkdir \
	    /bin/sh ${WRKBUILD}/${BASENAME}.sh --no-pre-clean --no-post-clean \
	    --unattended
	cd ${MINGW32_OUT}/lib/gcc/i386-mingw32/3.4.5/ && \
		patch < ${FILESDIR}/specs.diff && \
		${SUBST_CMD} specs

do-install:
	# Fix the autoconf mess
	${INSTALL_PROGRAM_DIR} ${MINGW32_DIR}/bin ${MINGW32_DIR}/libexec
	${INSTALL_DATA_DIR} ${MINGW32_DIR}/lib/ldscripts \
	    ${MINGW32_DIR}/include \
	    ${MINGW32_DIR}/lib/gcc/i386-mingw32/3.4.5/include
	${INSTALL_MAN_DIR} ${MINGW32_DIR}/man/man1 ${MINGW32_DIR}/man/man3 \
	    ${MINGW32_DIR}/man/man7

	# Binaries
	${INSTALL_PROGRAM} ${MINGW32_OUT}/bin/* \
	    ${MINGW32_OUT}/i386-mingw32/bin/* ${MINGW32_DIR}/bin
	${INSTALL_DATA} ${MINGW32_OUT}/i386-mingw32/lib/ldscripts/* \
	    ${MINGW32_DIR}/lib/ldscripts
	cp -r ${MINGW32_OUT}/libexec/* ${MINGW32_DIR}/libexec
	    chown -R ${BINOWN}:${BINGRP} ${MINGW32_DIR}/libexec && \
	    chmod -R 755 ${MINGW32_DIR}/libexec

	# Libraries
	${INSTALL_DATA} ${MINGW32_OUT}/lib/crt*.o \
	    ${MINGW32_DIR}/lib/gcc/i386-mingw32/3.4.5
	${INSTALL_DATA} ${MINGW32_OUT}/lib/*.a \
	    ${MINGW32_OUT}/i386-mingw32/lib/*.*a ${MINGW32_DIR}/lib
	cp -r ${MINGW32_OUT}/lib/* ${MINGW32_DIR}/lib && \
	    chown -R ${SHAREOWN}:${SHAREGRP} ${MINGW32_DIR}/lib && \
	    chmod -R 644 ${MINGW32_DIR}/lib/* && \
	    find ${MINGW32_DIR}/lib -type d -exec chmod a+x {} \;

	# Includes
	cp -r ${MINGW32_OUT}/include/* ${MINGW32_DIR}/include && \
	    chown -R ${SHAREOWN}:${SHAREGRP} ${MINGW32_DIR}/include && \
	    chmod -R 644 ${MINGW32_DIR}/include/* && \
	    find ${MINGW32_DIR}/include -type d -exec chmod a+x {} \;

	# Documentation
	${INSTALL_MAN} ${MINGW32_OUT}/share/man/man1/* \
	    ${MINGW32_OUT}/man/man1/* \
	    ${MINGW32_DIR}/man/man1
	${INSTALL_MAN} ${MINGW32_OUT}/share/man/man3/* ${MINGW32_DIR}/man/man3
	${INSTALL_MAN} ${MINGW32_OUT}/man/man7/* ${MINGW32_DIR}/man/man7

.include <bsd.port.mk>
