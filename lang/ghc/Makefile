# $OpenBSD: Makefile,v 1.140 2016/08/13 18:54:58 kili Exp $

COMMENT =		compiler for the functional language Haskell

# Note: please never ever set DPB_PROPERTIES=parallel (or some other
# magic that enables parallel builds) for this port! Not even if it
# appears to work. (search the upstream bug tracker for terms like
# "non-deterministic", "unresolved symbol", "signature mismatch" etc. to
# find the appropriate bug tickets)

# ghc hardcodes ${WRKDIR}/bin/gcc when the package is compiled with ccache 
NO_CCACHE =		Yes

DISTNAME =		ghc-${MODGHC_VER}
REVISION =		5
CATEGORIES =		lang devel
HOMEPAGE =		https://www.haskell.org/ghc/

# Version of the precompiled binaries
BIN_VER =		7.10.2.20160325

# Pull in lang/ghc to get MODGHC_VER and ONLY_FOR_ARCHS, which is maintained
# in ghc.port.mk. lang/python needed for regression tests.
MODULES =		lang/ghc lang/python converters/libiconv

# BSD w/o advertising clause + LGPLv3 (from libgmp).
# Distfile is bundled with other stuff like libffi, mingw
# binaries, with BSD, GPLv2 and Perl artistic license.
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		archivers/gtar \
			textproc/docbook-xsl
RUN_DEPENDS =

WANTLIB +=		c m ncursesw pthread util

MASTER_SITES =		${HOMEPAGE}dist/${MODGHC_VER}/ \
			${HOMEPAGE}dist/stable/dist/
MASTER_SITES0 =		https://openbsd.dead-parrot.de/distfiles/

DIST_SUBDIR =		ghc

BINDISTFILE =		${BINDISTFILE-${MACHINE_ARCH}}

DISTFILES =		ghc-${MODGHC_VER}b-src.tar.bz2 \
			ghc-${MODGHC_VER}b-testsuite.tar.bz2 \
			${BINDISTFILE}

.for m in amd64 i386
BINDISTFILE-$m =	ghc-${BIN_VER}-$m-unknown-openbsd.tar.bz2:0 \
			ghc-${BIN_VER}-shlibs-$m.tar.gz:0
SUPDISTFILES +=		${BINDISTFILE-$m}
.endfor

# Newest madness from the haskell world: packages are now stored in a
# directory named after the package 'key', which is made out of an
# abbreviation of the package name and the package version or whatever.
# At this point, we can as well factor out package version numbers to
# get smaller PLIST diffs for future updates.

GHC_ITEMS = \
	CABAL			1.22.5.0	3ux67khMI118y6VpwrFnXN \
	ARRAY			0.5.1.0		67iodizgJQIIxYVTp4emlA \
	BASE			4.8.2.0		HQfYBxpPvuw8OunzQu6JGM \
	BINARY			0.7.5.0		3uXFWMoAGBg0xKP9MHKRwi \
	BIN_PACKAGE_DB		0.0.0.0		JPOxOw4FLalDxRNtBqZ2ji \
	BYTESTRING		0.10.6.0	6VWy06pWzJq9evDvK2d4w6 \
	CONTAINERS		0.5.6.2		2C3ZI8RgPO2LBMidXKTvIU \
	DEEPSEQ			1.4.1.1		6vMKxt5sPFR0XsbRWvvq59 \
	DIRECTORY		1.2.2.0		0hFG6ZxK1nk4zsyOqbNHfm \
	FILEPATH		1.4.0.0		Ey7a1in9roBAE8bUFJ5R9m \
	GHC			7.10.3		0AG9TOjDEtx4Ji3wSwHOBe \
	GHC_PRIM		0.4.0.0		8TmvWUcS1U1IKHT0levwg3 \
	HASKELINE		0.7.2.1		GGvi737nHHfG6zm2y7Rimi \
	HOOPL			3.10.0.2	FCWMV1gJiCi02IwN4CnRgk \
	HPC			0.6.0.2		FUjQx3d1H3dEEtLFWv7hFw \
	INTEGER_GMP		1.0.0.0		2aU3IZNMF9a7mQ0OzsZ0dS \
	PRETTY			1.1.2.0		JItwetRppk1H5Uq3xbjDGC \
	PROCESS			1.2.3.0		52AgREEfSrnJLlkGV9YZZJ \
	TEMPLATE_HASKELL	2.10.0.0	GJPvtLC64aA4c1Jl10o2qt \
	TERMINFO		0.4.0.1		6iVf4EBnOgfIaaOCLRs8jl \
	TIME			1.5.0.1		FTheb6LSxyX1UABIbBXRfn \
	TRANSFORMERS		0.4.2.0		GZTjP9K5WFq01xC9BAGQpF \
	UNIX			2.7.1.0		KZL8h98IqDM57kQSPo1mKx \
	XHTML			3000.2.1	0ACfOp3hebWD9jGWE4v4Gh

.for _i _v _s in ${GHC_ITEMS}
${_i}_VER =	${_v}
${_i}_KEY =	${_s}
SUBST_VARS +=	${_i}_VER ${_i}_KEY
.endfor

USE_GMAKE =		Yes
USE_GROFF =		Yes

.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-fno-pie
.endif

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-iconv-includes=${LOCALBASE}/include \
			--with-iconv-libraries=${LOCALBASE}/lib
# XXX: wxneeded is a hack. Fix rts/Linker.c, mmapForLinker() and
#      loadObj_() instead.
CONFIGURE_ENV +=	CONF_CC_OPTS_STAGE0="-fno-pie -nopie" \
			CONF_CC_OPTS_STAGE1="-fno-pie -nopie" \
			CONF_CC_OPTS_STAGE2="-fno-pie -nopie" \
			CONF_GCC_LINKER_OPTS_STAGE0="-fno-pie -nopie" \
			CONF_GCC_LINKER_OPTS_STAGE1="-fno-pie -nopie -Wl,-z,wxneeded" \
			CONF_GCC_LINKER_OPTS_STAGE2="-fno-pie -nopie -Wl,-z,wxneeded"

# Do not pick up gpatch
CONFIGURE_ENV +=	ac_cv_path_PatchCmd=/usr/bin/patch

# Since ghc-7.10, ghc does not run without HOME defined and pointing to
# a writable directory, which would cause configure to fail (because it
# still builds ghc-pwd). Set HOME to let a 7.10-bootstrapper work.
CONFIGURE_ENV +=	HOME=${PORTHOME}

MAKE_FLAGS +=		StripLibraries=YES \
			INSTALL_BIN_OPTS=-s \
			HSCOLOUR_SRCS=NO \
			BUILD_DOCBOOK_PDF=NO \
			BUILD_DOCBOOK_PS=NO

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

post-extract:
	cd ${WRKSRC}/libraries/unix && \
	mkdir -p System/OpenBSD && \
	install -m 644 ${FILESDIR}/Process.hsc System/OpenBSD

BOOTSTRAP_SHLIBS =	${WRKDIR}/ghc-${BIN_VER}-shlibs-${MACHINE_ARCH}

post-patch:
# - Install a precompiled binary.
	cd ${WRKDIR}/ghc-${BIN_VER} && \
	LD_LIBRARY_PATH=${BOOTSTRAP_SHLIBS} \
	./configure --prefix=${WRKDIR}/bootstrap && \
	LD_LIBRARY_PATH=${BOOTSTRAP_SHLIBS} \
	${MAKE_PROGRAM} install
	rm -rf ${WRKDIR}/ghc-${BIN_VER}
# - Create some wrapper scripts setting LD_LIBRARY_PATH
	cd ${WRKDIR}/bin && \
	for f in $$(ls ../bootstrap/bin); do \
		${INSTALL_SCRIPT} /dev/null $$f && \
		exec > $$f && \
		echo '#!/bin/sh' && \
		echo 'LD_LIBRARY_PATH=${BOOTSTRAP_SHLIBS} \' && \
		printf 'exec ${WRKDIR}/bootstrap/bin/%s "$$@"\n' "$$f"; \
	done
# - Force the bootstrapper to use -nopie
#   (maybe removed when switching to a newer bootstrapper, but only if I
#    properly fix the bootstrap target)
	perl -pi -e 's/(\S+ \S+)/\1 -optl -nopie/ if /^exec /' \
		${WRKDIR}/bootstrap/bin/ghc

post-install:
	cd ${PREFIX}/lib/ghc && \
	GHC_PKG="./bin/ghc-pkg --no-user-package-db --global-package-db ./package.conf.d" && \
	${INSTALL_SCRIPT} /dev/null register.sh && \
	exec > register.sh && \
	echo '#!/bin/sh' && \
	echo 'p="$${0%/*}/bin/ghc-pkg --no-user-package-db --global-package-db $${0%/*}/package.conf.d"' && \
	for p in $$($$GHC_PKG dot | sed -n -e 's/^"\([^"]*\)" -> "\([^"]*\)"$$/\1 \2/p' | tsort -r); do \
		echo \$$p register --force - \<\< \'EOF\' && \
		$$GHC_PKG describe $$p | sed '/^pkgpath:$$/s@$$@ ${PKGPATH}@' && \
		echo EOF; \
	done && \
	${INSTALL_SCRIPT} /dev/null unregister.sh && \
	exec > unregister.sh && \
	echo '#!/bin/sh' && \
	echo 'p="$${0%/*}/bin/ghc-pkg --no-user-package-db --global-package-db $${0%/*}/package.conf.d"' && \
	for p in $$($$GHC_PKG dot | sed -n -e 's/^"\([^"]*\)" -> "\([^"]*\)"$$/\1 \2/p' | tsort); do \
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
BOOTSTRAP_DATE =	20160325

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
	echo INTEGER_LIBRARY=integer-gmp2 >> ${WRKSRC}/mk/build.mk
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

	mkdir -p ${WRKBUILD}/ghc-${MODGHC_VER}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s)
	ldd ${WRKBUILD}/ghc/stage2/build/tmp/ghc-stage2 | \
	awk '$$NF ~ /^\/usr\/(local\/)?lib\// { print $$NF }' | \
	xargs -J % cp -p % ${WRKBUILD}/ghc-${MODGHC_VER}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s)
	cd ${WRKBUILD} && \
	pax -wzf ghc-${MODGHC_VER}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s){.tar.gz,}

.include <bsd.port.mk>
