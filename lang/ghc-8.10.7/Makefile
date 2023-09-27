# Note: This is meant for building ghc bootstraps only. Don't wire it in
# /usr/ports/lang/Makefile or expect anything beyond make build to work.

# Not yet ported to other architectures
ONLY_FOR_ARCHS =	amd64

COMMENT =		bootstrap generator for lang/ghc

# ghc hardcodes ${WRKDIR}/bin/gcc when the package is compiled with ccache
NO_CCACHE =		Yes

# Upstream bug: https://gitlab.haskell.org/ghc/ghc/-/issues/22782
USE_NOEXECONLY =	Yes

USE_NOBTCFI =		Yes

GHC_VERSION =		8.10.7
DISTNAME =		ghc-${GHC_VERSION}
CATEGORIES =		lang devel
HOMEPAGE =		https://www.haskell.org/ghc/

# Version of the precompiled binaries
BIN_VER =		8.10.7.20230613

# BSD w/o advertising clause.
# Distfile is bundled with other stuff like libffi, mingw
# binaries, with BSD, GPLv2 and Perl artistic license.
PERMIT_PACKAGE =		Yes

WANTLIB += c curses ffi gmp iconv m pthread util

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

BUILD_DEPENDS =		archivers/bzip2 \
			archivers/gtar
RUN_DEPENDS =

NO_TEST =		Yes

# GHC build uses -Wl,-z,wxneeded on OpenBSD.
# XXX: wxneeded is a hack. Fix rts/Linker.c, mmapForLinker() and
#      loadObj_() instead.
USE_WXNEEDED =		special

SITES =			${HOMEPAGE}dist/${GHC_VERSION}/ \
			${HOMEPAGE}dist/stable/dist/
SITES.boot =		https://openbsd.dead-parrot.de/distfiles/

DIST_SUBDIR =		ghc

BINDISTFILE =		${BINDISTFILE-${MACHINE_ARCH}}

DISTFILES =		ghc-${GHC_VERSION}-src.tar.xz
DISTFILES.boot = 	${BINDISTFILE}

.for m in amd64
BINDISTFILE-$m =	ghc-${BIN_VER}-$m-unknown-openbsd.tar.xz \
			ghc-${BIN_VER}-shlibs-$m.tar.gz
SUPDISTFILES.boot +=	${BINDISTFILE-$m}
.endfor

# Substvars for all libraries, assuming that ghc-boot, ghc-boot-th,
# ghc-heap and ghci will always have the same version number as ghc.
GHC_ITEMS = \
        CABAL			3.2.1.0          \
        ARRAY			0.5.4.0    	 \
        BASE			4.14.3.0   	 \
        BINARY			0.8.8.0 	 \
        BYTESTRING		0.10.12.0	 \
        CONTAINERS		0.6.5.1		 \
        DEEPSEQ			1.4.4.0		 \
        DIRECTORY		1.3.6.0		 \
        EXCEPTIONS		0.10.4		 \
        FILEPATH		1.4.2.1		 \
        GHC			8.10.6		 \
        GHC_COMPACT		0.1.0.0		 \
        GHC_PRIM		0.6.1		 \
        HASKELINE		0.8.2		 \
        HPC			0.6.1.0		 \
        INTEGER_GMP		1.0.3.0		 \
        MTL			2.2.2		 \
        PARSEC			3.1.14.0	 \
        PRETTY			1.1.3.6		 \
        PROCESS			1.6.13.2	 \
        STM			2.5.0.1		 \
	TEMPLATE-HASKELL	2.16.0.0	 \
	TERMINFO		0.4.1.4		 \
	TEXT			1.2.4.1		 \
	TIME			1.9.3		 \
	TRANSFORMERS		0.5.6.2		 \
	UNIX			2.7.2.2		 \
	XHTML			3000.2.2.1

.for _i _v in ${GHC_ITEMS}
${_i}_VER =	${_v}
SUBST_VARS +=	${_i}_VER
.endfor

USE_GMAKE =		Yes
USE_GROFF =		Yes

AUTOCONF_VERSION =	2.71
CONFIGURE_STYLE =	gnu autoconf no-autoheader
CONFIGURE_ARGS +=	--with-ffi-includes=${LOCALBASE}/include \
			--with-ffi-libraries=${LOCALBASE}/lib \
			--with-gmp-includes=${LOCALBASE}/include \
			--with-gmp-libraries=${LOCALBASE}/lib \
			--with-iconv-includes=${LOCALBASE}/include \
			--with-iconv-libraries=${LOCALBASE}/lib \
			--with-system-libffi \
			CC="${CC}"

GHC_CC_OPTS =		-Wl,--no-execute-only -Qunused-arguments \
			-Wl,-z,nobtcfi
CONFIGURE_ENV +=	CONF_GCC_LINKER_OPTS_STAGE0="${GHC_CC_OPTS}" \
			CONF_GCC_LINKER_OPTS_STAGE1="${GHC_CC_OPTS}" \
			CONF_GCC_LINKER_OPTS_STAGE2="${GHC_CC_OPTS}" \
			CONF_CC_OPTS_STAGE2="${GHC_CC_OPTS}"

# Do not pick up gpatch
CONFIGURE_ENV +=	ac_cv_path_PatchCmd=/usr/bin/patch

# Since ghc-7.10, ghc does not run without HOME defined and pointing to
# a writable directory, which would cause configure to fail (because it
# still builds ghc-pwd). Set HOME to let a 7.10-bootstrapper work.
CONFIGURE_ENV +=	HOME=${PORTHOME}

MAKE_FLAGS +=		StripLibraries=YES \
			INSTALL_BIN_OPTS=-s \
			HSCOLOUR_SRCS=NO \
			BUILD_SPHINX_PDF=NO

# For mktexpk (via dvips when building the PostScript documentation):
PORTHOME =		${WRKDIR}

BOOTSTRAP_SHLIBS =	${WRKDIR}/ghc-${BIN_VER}-shlibs-${MACHINE_ARCH}

post-patch:
	cd ${WRKDIR}/ghc-${BIN_VER} && \
	LD_LIBRARY_PATH=${BOOTSTRAP_SHLIBS} \
	CONFIGURE_ENV=${CONFIGURE_ENV} \
	./configure --prefix=${WRKDIR}/bootstrap CC="${CC}" && \
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
	cp ${WRKSRC}/mk/build.mk{.sample,}
	echo libraries/base_CONFIGURE_OPTS+=--configure-option=--with-libcharset=no >> ${WRKSRC}/mk/build.mk
	echo HADDOCK_DOCS=NO >> ${WRKSRC}/mk/build.mk


# It doesn't matter whether this is the actual date of the bootstrapper
# build. It's just used to get different distfiles whenever new
# bootstrappers have to be built.
BOOTSTRAP_DATE =	20230925

# Create a bootstrapper. This compiles a stripped-down version of
# ghc and creates a `bindist', i.e. a tarball with binaries that
# can be used for bootstrapping.
bootstrap: patch
	@if [ ! -x ${LOCALBASE}/bin/autoconf-2.69 ]; then \
		echo Please install autoconf-2.69.; \
		false; \
	fi
	@if [ ! -x ${LOCALBASE}/bin/automake-1.4 ]; then \
		echo Please install automake-1.4.; \
		false; \
	fi

	$(_PBUILD) $(MAKE) _bootstrap_prepare

	env CONFIGURE_ENV=RELEASE=NO ${MAKE} configure

	${MAKE} build ALL_TARGET="all binary-dist" \
		AUTOCONF_VERSION=2.69 AUTOMAKE_VERSION=1.4

	$(_PBUILD) $(MAKE) _bootstrap_finish

_bootstrap_prepare:
	cp ${FILESDIR}/bootstrap.mk ${WRKSRC}/mk/build.mk
	echo ${BOOTSTRAP_DATE} > ${WRKSRC}/VERSION_DATE

_bootstrap_finish:
	mkdir -p ${WRKBUILD}/ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s)
	ldd ${WRKBUILD}/ghc/stage2/build/tmp/ghc-stage2 | \
	awk '$$NF ~ /^\/usr\/(local\/)?lib\// { print $$NF }' | \
	xargs -J % cp -p % ${WRKBUILD}/ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s)
	cd ${WRKBUILD} && \
	pax -wzf ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s){.tar.gz,}

.include <bsd.port.mk>
