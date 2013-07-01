# $OpenBSD: Makefile,v 1.98 2013/07/01 21:42:51 kili Exp $

COMMENT-main =		compiler for the functional language Haskell
COMMENT-doc =		documentation for GHC

# Note: please never ever set DPB_PROPERTIES=parallel (or some other
# magic that enables parallel builds) for this port! Not even if it
# appears to work. (search the upstream bug tracker for terms like
# "non-dterministic", "unresolved symbol", "signature mismatch" etc. to
# find the appropriate bug tickets)

DISTNAME =		ghc-${MODGHC_VER}
PKGNAME-main =		ghc-${MODGHC_VER}
REVISION-main =		4
PKGNAME-doc =		ghc-doc-${MODGHC_VER}
CATEGORIES =		lang devel
HOMEPAGE =		http://www.haskell.org/ghc/

# Version of the precompiled binaries
BIN_VER =		7.4.2.20120917

# xhtml replacement version (for meta/haskell-platform)
XHTML_VER =		3000.2.1

SUBST_VARS +=		XHTML_VER

# Pull in lang/ghc to get MODGHC_VER and ONLY_FOR_ARCHS, which is maintained
# in ghc.port.mk. lang/python needed for regression tests.
MODULES =		lang/ghc lang/python converters/libiconv

PSEUDO_FLAVORS =	no_doc
FLAVOR ?=
MULTI_PACKAGES =	-main -doc

# BSD w/o advertising clause + LGPLv3 (from libgmp).
# Distfile is bundled with other stuff like libffi, mingw
# binaries, with BSD, GPLv2 and Perl artistic license.
PERMIT_PACKAGE_CDROM =		Yes

PKG_ARCH-doc =		*
BUILD_DEPENDS =		archivers/gtar \
			textproc/docbook-xsl
LIB_DEPENDS-doc =
LIB_DEPENDS-main =	${LIB_DEPENDS}
RUN_DEPENDS-doc =
RUN_DEPENDS-main =

WANTLIB-main =		${WANTLIB} c m ncursesw pthread util

WANTLIB-doc =

MASTER_SITES =		${HOMEPAGE}dist/${MODGHC_VER}/ \
			${HOMEPAGE}dist/stable/dist/
MASTER_SITES0 =		http://openbsd.dead-parrot.de/distfiles/
MASTER_SITES1 =		http://hackage.haskell.org/packages/archive/xhtml/${XHTML_VER}/

DIST_SUBDIR =		ghc

# Haddock needs about 2.5 GB for processing the ghc library.
VMEM_WARNING =		Yes

BINDISTFILE =		${BINDISTFILE-${MACHINE_ARCH}}

DISTFILES =		ghc-${MODGHC_VER}-src.tar.bz2 \
			ghc-${MODGHC_VER}-testsuite.tar.bz2 \
			xhtml-${XHTML_VER}.tar.gz:1 \
			${BINDISTFILE}

.for m in amd64 i386
BINDISTFILE-$m =	ghc-${BIN_VER}-$m-unknown-openbsd.tar.bz2:0
SUPDISTFILES +=		${BINDISTFILE-$m}
.endfor

USE_GMAKE =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-iconv-includes=${LOCALBASE}/include \
			--with-iconv-libraries=${LOCALBASE}/lib
CONFIGURE_ENV =		CONF_CC_OPTS_STAGE0="-fno-pie -nopie" \
			CONF_CC_OPTS_STAGE1="-fno-pie -nopie" \
			CONF_CC_OPTS_STAGE2="-fno-pie -nopie" \
			CONF_GCC_LINKER_OPTS_STAGE0="-fno-pie -nopie" \
			CONF_GCC_LINKER_OPTS_STAGE1="-fno-pie -nopie" \
			CONF_GCC_LINKER_OPTS_STAGE2="-fno-pie -nopie" \
			CONF_GCC_LD_OPTS_STAGE0="-nopie" \
			CONF_GCC_LD_OPTS_STAGE1="-nopie" \
			CONF_GCC_LD_OPTS_STAGE2="-nopie"

MAKE_FLAGS +=		StripLibraries=YES \
			INSTALL_BIN_OPTS=-s \
			HSCOLOUR_SRCS=NO

.if ${FLAVOR:Mno_doc}
MAKE_FLAGS +=		HADDOCK_DOCS=NO \
			LATEX_DOCS=NO \
			BUILD_DOCBOOK_HTML=NO \
			BUILD_DOCBOOK_PDF=NO \
			BUILD_DOCBOOK_PS=NO
.else
BUILD_DEPENDS +=	textproc/dblatex
.endif

# Thank god that they're only building compilers and no nuclear
# power plants. Note that we do not override CREATE_DATA, because
# it's now used for *changing* permissions instead of initially
# creating the files, and because we remove them anyway in post-install
# (they are re-created during pkg_add).
FAKE_FLAGS +=		CREATE_SCRIPT="${INSTALL_SCRIPT} /dev/null " \
			INSTALL_DATA="${INSTALL_DATA} \$$1 \$$2 \$$3" \
			INSTALL_DIR="${INSTALL_DATA_DIR} \$$1" \
			INSTALL_DOC="${INSTALL_DATA} \$$1 \$$2 \$$3" \
			INSTALL_HEADER="${INSTALL_DATA} \$$1 \$$2 \$$3" \
			INSTALL_MAN="${INSTALL_MAN} \$$1 \$$2 \$$3" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM} \$$1 \$$2 \$$3" \
			INSTALL_SCRIPT="${INSTALL_SCRIPT} \$$1 \$$2 \$$3" \
			INSTALL_SHLIB="${INSTALL} ${INSTALL_COPY} -S -o ${LIBOWN} -g ${LIBGRP} -m ${LIBMODE} \$$1 \$$2 \$$3"

# For mktexpk (via dvips when building the PostScript documentation):
PORTHOME =		${WRKDIR}

TEST_DEPENDS =	print/ghostscript/gnu

post-patch:
	${SUBST_CMD} ${WRKSRC}/docs/index.html
# - Install a precompiled binary.
	cd ${WRKDIR}/ghc-${BIN_VER} && \
	./configure --prefix=${WRKDIR} && \
	${MAKE_PROGRAM} install
	rm -rf ${WRKDIR}/ghc-${BIN_VER}
# - Replace libraries/xhtml.
	cp ${WRKSRC}/libraries/xhtml/ghc.mk ${WRKDIR}/xhtml-${XHTML_VER} 
	cp ${WRKSRC}/libraries/xhtml/GNUmakefile ${WRKDIR}/xhtml-${XHTML_VER} 
	mv ${WRKSRC}/libraries/xhtml{,-ghcdist}
	mv ${WRKDIR}/xhtml-${XHTML_VER} ${WRKSRC}/libraries/xhtml
	perl -pi -e 's/(\S+ \S+)/\1 -optl -nopie/ if /^exec /' \
		${WRKDIR}/bin/ghc

post-install:
	cd ${PREFIX}/lib/ghc && \
	GHC_PKG="./ghc-pkg --global-conf ./package.conf.d" && \
	${INSTALL_SCRIPT} /dev/null register.sh && \
	exec > register.sh && \
	echo '#!/bin/sh' && \
	echo 'exec > /dev/null 2>&1' && \
	echo 'p="$${0%/*}/ghc-pkg --global-conf $${0%/*}/package.conf.d"' && \
	for p in $$($$GHC_PKG list --simple); do \
		echo \$$p register --force - \<\< \'EOF\' && \
		$$GHC_PKG describe $$p | sed '/^pkgpath:$$/s@$$@ ${PKGPATH}@' && \
		echo EOF; \
	done && \
	${INSTALL_SCRIPT} /dev/null unregister.sh && \
	exec > unregister.sh && \
	echo '#!/bin/sh' && \
	echo 'exec > /dev/null 2>&1' && \
	echo 'p="$${0%/*}/ghc-pkg --global-conf $${0%/*}/package.conf.d"' && \
	for p in $$($$GHC_PKG list --simple); do \
		echo \$$p unregister --force $$p; \
	done && \
	rm package.conf.d/* && \
	$$GHC_PKG recache

do-test:
	ulimit -c 0 && \
	cd ${WRKSRC}/testsuite/tests && \
	exec ${SETENV} ${MAKE_ENV} HS_ENCODING=utf-8 \
		${MAKE_PROGRAM} ${MAKE_FLAGS} \
		PYTHON="${MODPY_BIN}"



# It doesn't matter wether this is the actual date of the bootstrapper
# build. It's just used to get different distfiles whenever new
# bootstrappers have to be built.
BOOTSTRAP_DATE =	20120917

# Create a bootstrapper. This compiles a stripped-down version of
# ghc and creates a `bindist', i.e. a tarball with binaries that
# can be used for bootstrapping.
bootstrap: patch
	@if [ ! -x ${LOCALBASE}/bin/autoconf-2.61 ]; then \
		echo Please install autoconf-2.61.; \
		false; \
	fi
	@if [ ! -x ${LOCALBASE}/bin/automake-1.4 ]; then \
		echo Please install automake-1.4.; \
		false; \
	fi
	echo HSCOLOUR_SRCS=NO > ${WRKSRC}/mk/build.mk
	echo GhcLibHcOpts=-O -fasm >> ${WRKSRC}/mk/build.mk
	echo GhcStage1HcOpts=-O -fasm >> ${WRKSRC}/mk/build.mk
	echo GhcStage2HcOpts=-O -fasm >> ${WRKSRC}/mk/build.mk
	echo SplitObjs=NO >> ${WRKSRC}/mk/build.mk
	echo GhcLibWays=v >> ${WRKSRC}/mk/build.mk
	echo GhcRTSWays= >> ${WRKSRC}/mk/build.mk
	echo GhcWithInterpreter=NO >> ${WRKSRC}/mk/build.mk
	echo INTEGER_LIBRARY=integer-simple >> ${WRKSRC}/mk/build.mk
	echo SRC_CC_OPTS+=-g -O0 >> ${WRKSRC}/mk/build.mk
	echo HADDOCK_DOCS=NO >> ${WRKSRC}/mk/build.mk
	echo LATEX_DOCS=NO >> ${WRKSRC}/mk/build.mk
	echo BUILD_DOCBOOK_HTML=NO >> ${WRKSRC}/mk/build.mk
	echo BUILD_DOCBOOK_PDF=NO >> ${WRKSRC}/mk/build.mk
	echo BUILD_DOCBOOK_PS=NO >> ${WRKSRC}/mk/build.mk
	echo GhcWithSMP=NO >> ${WRKSRC}/mk/build.mk
	echo LD_OPTS=-optl-static -optl-s >> ${WRKSRC}/mk/build.mk

	echo ${BOOTSTRAP_DATE} > ${WRKSRC}/VERSION_DATE

	env CONFIGURE_ENV=RELEASE=NO ${MAKE} configure

	env MAKE_ENV="AUTOCONF_VERSION=2.61 AUTOMAKE_VERSION=1.4" \
	${MAKE} build ALL_TARGET="all binary-dist"

.include <bsd.port.mk>
