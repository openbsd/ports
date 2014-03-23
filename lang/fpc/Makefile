# $OpenBSD: Makefile,v 1.7 2014/03/23 10:54:43 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source compiler for Pascal/Object Pascal

V =			2.6.4
DISTNAME =		fpcbuild-${V}
PKGNAME =		fpc-${V}
BOOT_GEN =		0

CATEGORIES =		lang

HOMEPAGE =		http://www.freepascal.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# compiler: GPLv2+, packages/rtl: modified LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		ftp://ftp.freepascal.org/pub/fpc/dist/$V/source/
MASTER_SITES0 =		https://distfiles.bsdfrog.org/
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

TEST_DEPENDS =	devel/nasm

MAKE_FLAGS =		NOGDB=1
MAKE_ENV =		MKDIRPROG=/bin/mkdir ECHO=/bin/echo \
			GINSTALL=/usr/bin/install DATE=/bin/date \
			TARPROG=/bin/tar FPC="${WRKDIR}/bin/${COMPNAME}"
FAKE_FLAGS =		INSTALLEXE="${INSTALL_PROGRAM}" \
			MKDIR="${INSTALL_DATA_DIR}" \
			INSTALL="${INSTALL_DATA}"

TEST_FLAGS =		TEST_FPC="${WRKSRC}/fpcsrc/compiler/${COMPNAME}" \
			FPC="${WRKSRC}/fpcsrc/compiler/${COMPNAME}" \
			FPCOPT="-Fu${WRKSRC}/fpcsrc/rtl/units/${CONFIG}" \
			FPCMAKE="${WRKSRC}/fpcsrc/utils/fpcm/fpcmake"

USE_GMAKE =		Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/fpcsrc/compiler/systems/t_bsd.pas

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/fpc/lexyacc
	chmod ${DIRMODE} ${PREFIX}/lib/fpc/lexyacc/
	chmod ${SHAREMODE} ${PREFIX}/lib/fpc/lexyacc/*
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/fpc-${V}/fpc
	chmod ${DIRMODE} ${PREFIX}/share/doc/fpc-${V}/fpc/
	chmod ${SHAREMODE} ${PREFIX}/share/doc/fpc-${V}/fpc/*
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/fpc-$V
	find ${PREFIX}/share/examples/fpc-$V -type d -exec \
		chmod ${DIRMODE} {} \+
	find ${PREFIX}/share/examples/fpc-$V -type f -exec \
		chmod ${SHAREMODE} {} \+
	cd ${PREFIX}/bin && ln -s ../lib/fpc/${V}/${COMPNAME} .
	# generate sample config file
	${PREFIX}/bin/fpcmkcfg -d "basepath=${TRUEPREFIX}/lib/fpc/$V" \
		-o ${PREFIX}/share/examples/fpc-$V/fpc.cfg.sample

do-test:
	find ${WRKSRC} -name Package.fpc | xargs rm -f
	cd ${WRKSRC}/fpcsrc/tests && ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} full

.include <bsd.port.mk>
