# $OpenBSD: Makefile,v 1.20 2020/03/20 16:44:24 naddy Exp $

BROKEN =		syscalls from main program
ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source compiler for Pascal/Object Pascal

V =			3.0.4
DISTNAME =		fpcbuild-${V}
PKGNAME =		fpc-${V}
REVISION =		0
BOOT_GEN =		1

CATEGORIES =		lang

HOMEPAGE =		http://www.freepascal.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# compiler: GPLv2+, packages/rtl: modified LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv pthread

LIB_DEPENDS =		converters/libiconv

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freepascal/}
MASTER_SITES0 =		https://distfiles.stumpf.co/
DIST_SUBDIR =		fpc
BOOTSTRAP =		fpcboot-openbsd-$V-${BOOT_GEN}${EXTRACT_SUFX}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} ${BOOTSTRAP}:0

.if ${MACHINE_ARCH} == "amd64"
COMPNAME =		ppcx64
CONFIG =		x86_64-openbsd
PKG_ARGS +=		-Damd64=1
PKG_ARGS +=		-Di386=0
.else
COMPNAME =		ppc386
CONFIG =		i386-openbsd
PKG_ARGS +=		-Di386=1
PKG_ARGS +=		-Damd64=0
.endif

SUBST_VARS +=		V CONFIG

TEST_DEPENDS =		devel/nasm

MAKE_FLAGS =		NOGDB=1
COMMON_ENV =		MKDIRPROG=/bin/mkdir ECHO=/bin/echo \
			GINSTALL=/usr/bin/install DATE=/bin/date \
			TARPROG=/bin/tar
MAKE_ENV =		${COMMON_ENV} FPC="${WRKDIR}/bin/${COMPNAME}"
TEST_ENV =		${COMMON_ENV}
FAKE_FLAGS =		INSTALLEXE="${INSTALL_PROGRAM}" \
			MKDIR="${INSTALL_DATA_DIR}" \
			INSTALL="${INSTALL_DATA}"

TEST_FLAGS =		TEST_FPC="${WRKSRC}/fpcsrc/compiler/${COMPNAME}" \
			FPC="${WRKSRC}/fpcsrc/compiler/${COMPNAME}" \
			FPCOPT="-Fu${WRKSRC}/fpcsrc/rtl/units/${CONFIG}"

USE_GMAKE =		Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/fpcsrc/compiler/systems/t_bsd.pas

post-install:
	cd ${PREFIX}/bin && ln -s ../lib/fpc/${V}/${COMPNAME} .
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/fpc/lexyacc
	chmod ${DIRMODE} ${PREFIX}/lib/fpc/lexyacc/
	chmod ${SHAREMODE} ${PREFIX}/lib/fpc/lexyacc/*
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/fpc-${V}/fpc
	chmod ${DIRMODE} ${PREFIX}/share/doc/fpc-${V}/fpc/
	chmod ${SHAREMODE} ${PREFIX}/share/doc/fpc-${V}/fpc/*
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fpc-$V
	# generate sample config file
	${PREFIX}/bin/fpcmkcfg -d "basepath=${TRUEPREFIX}/lib/fpc/$V" \
		-o ${PREFIX}/share/examples/fpc-$V/fpc.cfg.sample

do-test:
	find ${WRKSRC} -name Package.fpc -delete
	cd ${WRKSRC}/fpcsrc/tests && \
		env -i ${ALL_TEST_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} full

.include <bsd.port.mk>
