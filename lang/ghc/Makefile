# $OpenBSD: Makefile,v 1.29 2008/10/02 19:50:52 kili Exp $
# 
# Ancient versions based on Simon Marlow's port script for FreeBSD:
# $FreeBSD: ports/lang/ghc/Makefile,v 1.13 2002/08/22 12:53:38 obraun Exp $
# And on NetBSD's 5.04.3 .hc boot script

COMMENT-main=		compiler for the functional language Haskell
COMMENT-doc=		documentation for GHC

DISTNAME=		ghc-${MODGHC_VER}
PKGNAME-main=		ghc-${MODGHC_VER}p2
PKGNAME-doc=		ghc-doc-${MODGHC_VER}p0
CATEGORIES=		lang
HOMEPAGE=		http://www.haskell.org/ghc/

# Pull in lang/ghc to get MODGHC_VER and ONLY_FOR_ARCHS, which is maintained
# in ghc.port.mk. lang/python needed for regress.
MODULES=		lang/ghc lang/python

MULTI_PACKAGES=		-doc -main

PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

# BSD w/o advertising clause
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

PKG_ARCH-doc=		*
BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS-main=	gmp::devel/gmp
RUN_DEPENDS-doc=
RUN_DEPENDS-main=
WANTLIB-main=		c m ncurses pthread readline

MASTER_SITES=		${HOMEPAGE}dist/${MODGHC_VER}/
MASTER_SITES0=		${HOMEPAGE}docs/${MODGHC_VER}/
MASTER_SITES1=		http://openbsd.dead-parrot.de/distfiles/

DIST_SUBDIR=		ghc-${MODGHC_VER}
DOC_FILES=		Cabal users_guide libraries
DOC_DIR=		${PREFIX}/share/doc/ghc

.if ${FLAVOR:L:Mnative_bootstrap}
# In theory, even older versions should work, but the only version
# tested with is 6.2.2.
BUILD_DEPENDS+=		:ghc->=6.2.2:lang/ghc
.else
HCFILES=		${HCFILES-${MACHINE_ARCH}}
CONFIGURE_ARGS=		--enable-hc-boot
.endif

DISTFILES=		ghc-${MODGHC_VER}-src.tar.bz2 \
			ghc-${MODGHC_VER}-src-extralibs.tar.bz2 \
			ghc-testsuite-6.6.1.tar.gz \
			${DOC_FILES:C/(.+)/\1.html.tar.gz:0/g} \
			${HCFILES}

# HC file bundles for non-native bootstrapping. To build a registerised
# bundle, run make with ALL_TARGET="stage1 hc-file-bundle" and the
# following configuration settings for GHC (in ${WRKSRC}/mk/build.mk;
# variable settings MAKE_FLAGS may work, too):
#
#	GhcBootLibs=YES
#	GhcLibHcOpts=-O
#	GhcWithInterpreter=NO
#	SRC_HC_OPTS=-O -H32 -fasm -keep-hc-files
#	SplitObjs=NO
#
# The version and configuration of GHC used to build the bundle must
# match those of the GHC you want to bootstrap from the bundle. Don't
# even try to create a bundle from ghc-6.2.2 and then build ghc-6.6.1
# with it. (same for registerised vs. unregisterised builds).
#
# The general solution for porting this to other architectures will
# be to boot via unregisterised .hc files generated on an architecture
# already running GHC. For more information, see:
# http://hackage.haskell.org/trac/ghc/wiki/Building/Porting

.for m in amd64 i386
HCFILES-$m=		ghc-${MODGHC_VER}-$m-unknown-openbsd-hc.tar.bz2:1
SUPDISTFILES+=		${HCFILES-$m}
.endfor

SUBST_VARS=		MODGHC_VER

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu dest autoconf
AUTOCONF_VERSION=	2.57
CONFIGURE_ARGS+=	--with-gmp-includes=${LOCALBASE}/include \
			--with-gmp-libraries=${LOCALBASE}/lib

FAKE_FLAGS+=		stage=2

post-extract:
	@mv ${WRKDIR}/testsuite ${WRKSRC}

.if !${FLAVOR:L:Mnative_bootstrap}
# Bootstrap stage 1 from HC files, then wipe out all .o and .a files and
# resume a "normal" 2-stage build using the compiler just bootstrapped.
# No idea yet what's going wrong with GhcPatchLevel during configure
# (seeo mk/config.mk.in), so explicitely pass UseStage1=YES, to fix the
# build of compat/cbit/unicode.c
MAKE_FLAGS+=		BootingFromHc=NO \
			UseStage1=YES \
			SplitObjs=NO \
			GHC=${WRKBUILD}/compiler/ghc-inplace \
			HC=${WRKBUILD}/compiler/ghc-inplace \
			HAPPY=${WRKSRC}/distrib/fake-happy
BOOT_FLAGS=		GhcBootLibs=YES GhcWithInterpreter=NO \
			SplitObjs=NO
BOOT_DIRS=		utils/mkdependC utils/unlit utils/mkdirhier \
			driver/mangler driver/split includes rts libraries \
			compat utils compiler

# Override to get profiling libraries and several additional
# utilities installed.
FAKE_FLAGS+=		BootingFromHc=NO

do-build:
	# Bootstrap an initial ghc from HC files.
.for dir in ${BOOT_DIRS}
	cd ${WRKBUILD}/${dir} && \
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${BOOT_FLAGS} boot all
.endfor
	# Cleanup objects and libraries
	find ${WRKBUILD} -name '*.[ao]' | xargs rm -f
	# Rebuild includes, RTS, and a minimal subset of libraries.
.for dir in includes rts libraries
	cd ${WRKBUILD}/${dir} && \
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} boot all \
		GhcBootLibs=YES
.endfor
	# Rebuild compat and utils. Build the mini-drivers for ghc
	# and ghci right now, else they'll be built during the fake
	# stage, which will put the wrong paths into them.
.for dir in compat utils driver/ghc driver/ghci
	cd ${WRKBUILD}/${dir} && \
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} clean boot all
.endfor
	cd ${WRKBUILD}/libraries && \
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} boot all
	cd ${WRKBUILD} && \
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} stage2
.endif

# Create scripts for the Cabal package registry that will be used for
# @exec and @unexec. And generate a man page.
post-build:
	cd ${WRKBUILD} && sh ${FILESDIR}/mkregunreg.sh ${PREFIX}
	cd ${WRKBUILD}/docs/man && \
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ghc.1

post-install:
	rm ${PREFIX}/lib/ghc/package.conf
	${INSTALL_SCRIPT} ${WRKBUILD}/{un,}register.sh ${PREFIX}/lib/ghc
	${INSTALL_DATA_DIR} ${DOC_DIR}
	cd ${WRKDIR} && umask 022 && pax -rw ${DOC_FILES} ${DOC_DIR}
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/docs/man/ghc.1 ${PREFIX}/man/man1

do-regress:
	cd ${WRKSRC}/testsuite/tests/ghc-regress && \
	${MAKE_ENV} ${MAKE_PROGRAM} stage=2 ${MAKE_FLAGS} \
		PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
