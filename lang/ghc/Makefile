# Not yet ported to other architectures (i386 bootstrap recipe is broken).
ONLY_FOR_ARCHS =	amd64

COMMENT =		compiler for the functional language Haskell

DPB_PROPERTIES =	parallel

# ghc hardcodes ${WRKDIR}/bin/gcc when the package is compiled with ccache
NO_CCACHE =		Yes

# Upstream bug: https://gitlab.haskell.org/ghc/ghc/-/issues/22782
USE_NOEXECONLY =	Yes

USE_NOBTCFI =		Yes

GHC_VERSION =		9.6.5
DISTNAME =		ghc-${GHC_VERSION}
CATEGORIES =		lang devel
HOMEPAGE =		https://www.haskell.org/ghc/

# Version of the precompiled binaries
BIN_VER =		9.6.4.20240321

# lang/python needed to bootstrap hadrian.
MODULES =		lang/python

MODPY_BUILDDEP =	Yes
MODPY_RUNDEP =		No

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

TEST_DEPENDS =		shells/bash

SITES =			https://downloads.haskell.org/ghc/${GHC_VERSION}/
SITES.boot =		https://openbsd.dead-parrot.de/distfiles/

DIST_SUBDIR =		ghc

.for m in amd64
BINDISTFILE-$m =	ghc-${BIN_VER}-$m.tar.xz \
			ghc-${BIN_VER}-shlibs-$m.tar.gz
SUPDISTFILES.boot +=	${BINDISTFILE-$m}
.endfor

DISTFILES =		ghc-${GHC_VERSION}-src.tar.xz \
			ghc-${GHC_VERSION}-testsuite.tar.xz
DISTFILES.boot = 	${BINDISTFILE-${MACHINE_ARCH}}

DISTFILES.noextract =	hadrian-sources-${BIN_VER}.tar.gz
SITES.noextract =	https://openbsd.dead-parrot.de/distfiles/

EXTRACT_ONLY =		${DISTFILES} ${DISTFILES.boot}

# Substvars for all libraries, assuming that ghc-boot, ghc-boot-th,
# ghc-heap and ghci will always have the same version number as ghc.
GHC_ITEMS = \
	CABAL			3.10.3.0	 \
	ARRAY			0.5.6.0		 \
	BASE			4.18.2.1	 \
	BINARY			0.8.9.1		 \
	BYTESTRING		0.11.5.3	 \
	CONTAINERS		0.6.7		 \
	DEEPSEQ			1.4.8.1		 \
	DIRECTORY		1.3.8.4		 \
	EXCEPTIONS		0.10.7		 \
	FILEPATH		1.4.300.1	 \
	GHC			9.6.5		 \
	GHC_BIGNUM		1.3		 \
	GHC_COMPACT		0.1.0.0		 \
	GHC_PRIM		0.10.0		 \
	HASKELINE		0.8.2.1		 \
	HPC			0.6.2.0		 \
	INTEGER_GMP		1.1		 \
	MTL			2.3.1		 \
	PARSEC			3.1.16.1	 \
	PRETTY			1.1.3.6		 \
	PROCESS			1.6.19.0	 \
	RTS			1.0.2		 \
	STM			2.5.1.0		 \
	TEMPLATE-HASKELL	2.20.0.0	 \
	TERMINFO		0.4.1.6		 \
	TEXT			2.0.2		 \
	TIME			1.12.2		 \
	TRANSFORMERS		0.6.1.0		 \
	UNIX			2.8.4.0		 \
	XHTML			3000.2.2.1

.for _i _v in ${GHC_ITEMS}
${_i}_VER =	${_v}
SUBST_VARS +=	${_i}_VER
.endfor

USE_GMAKE =		Yes
USE_GROFF =		Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	gnu autoreconf no-autoheader
CONFIGURE_ARGS +=	--with-ffi-includes=${LOCALBASE}/include \
			--with-ffi-libraries=${LOCALBASE}/lib \
			--with-gmp-includes=${LOCALBASE}/include \
			--with-gmp-libraries=${LOCALBASE}/lib \
			--with-iconv-includes=${LOCALBASE}/include \
			--with-iconv-libraries=${LOCALBASE}/lib \
			--with-system-libffi \
			CC="${CC}"

CONFIGURE_ENV += SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

GHC_CC_OPTS =		-Wl,--no-execute-only -Qunused-arguments \
			-Wl,-z,nobtcfi
CONFIGURE_ENV +=	CONF_GCC_LINKER_OPTS_STAGE0="${GHC_CC_OPTS}" \
			CONF_GCC_LINKER_OPTS_STAGE1="${GHC_CC_OPTS}" \
			CONF_GCC_LINKER_OPTS_STAGE2="${GHC_CC_OPTS}" \
			CONF_CC_OPTS_STAGE2="${GHC_CC_OPTS}"

MAKE_FLAGS +=		StripLibraries=YES \
			INSTALL_BIN_OPTS=-s \
			HSCOLOUR_SRCS=NO \
			BUILD_SPHINX_PDF=NO

# haddock: ... <stdout>: commitBuffer: invalid argument (invalid character)
MAKE_ENV +=	LC_ALL=en_US.UTF-8

TEST_DEPENDS =	print/ghostscript/gnu ${MODPY_RUN_DEPENDS}

post-extract:
	cd ${WRKSRC} && ${AUTOCONF_ENV} ${MODPY_BIN} ./boot.source

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
# - Build hadrian
	cd ${WRKSRC} && \
	${MODPY_BIN} hadrian/bootstrap/bootstrap.py --no-archive -w ../bin/ghc \
		-s ${FULLDISTDIR}/hadrian-sources-${BIN_VER}.tar.gz

HADRIAN = \
	env -i ${AUTOCONF_ENV} ${MAKE_ENV} \
	_build/bin/hadrian '*.*.ghc.link.opts+=-optl-Wl,--no-execute-only' \
	'*.*.ghc.link.opts+=-optl-Qunused-arguments' \
	'*.*.ghc.link.opts+=-L/usr/local/lib' \
	--docs=none \
	--flavour=release${TRANSFORMER} \
	--no-color \
	--jobs=${MAKE_JOBS}

do-build:
	cd ${WRKSRC} && \
	${HADRIAN} binary-dist-dir
	ln -sf ${WRKSRC}/_build/bindist/ghc-${GHC_VERSION}{-x86_64-unknown-openbsd,}

do-install:
	cd ${WRKSRC}/_build/bindist/ghc-${GHC_VERSION} && \
	CONFIGURE_ENV=${CONFIGURE_ENV}  ./configure && \
	env -i ${MAKE_ENV} ${FAKE_SETUP} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}

do-test:
	ln -sf /usr/bin/false ${WRKDIR}/bin/git
	cd ${WRKSRC} && \
	ulimit -s 8192 -d 10485760 -n 1024 && env  ${HADRIAN} test

# It doesn't matter whether this is the actual date of the bootstrapper
# build. It's just used to get different distfiles whenever new
# bootstrappers have to be built.
BOOTSTRAP_DATE =	20240321

# Create a bootstrapper. This compiles a stripped-down version of ghc
# and creates a `bindist', i.e. a tarball with binaries that can be
# used for bootstrapping. Additionally it builds a bundle of required
# shared libraries and the sources required for building hadrian.
bootstrap:
	$(MAKE) rebuild 'TRANSFORMER=+no_profiled_libs'
	$(_PBUILD) $(MAKE) _bootstrap_finish
	${MODPY_BIN} ${WRKSRC}/hadrian/bootstrap/bootstrap.py -w ${WRKSRC}/_build/stage1/bin/ghc \
		-d ${WRKSRC}/hadrian/bootstrap/plan-bootstrap-${GHC_VERSION:S/./_/g:S/4/2/}.json fetch \
		-o hadrian-sources-${GHC_VERSION}.${BOOTSTRAP_DATE}
	ln -sf ${WRKBUILD}/ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}*.?z .
	@sha256 -b *.?z
	@perl -e 'for (@ARGV) { $$s = (stat $$_)[7]; print "SIZE (ghc/$$_) = $$s\n"; }' *.?z

_bootstrap_finish:
	mkdir -p ${WRKBUILD}/ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s)
	ldd ${WRKSRC}/_build/bindist/ghc-${GHC_VERSION}/bin/ghc | \
		awk '$$NF ~ /^\/usr\/(local\/)?lib\// { print $$NF }' | \
		xargs -J % cp -fp % ${WRKBUILD}/ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s)
	cd ${WRKBUILD} && \
		pax -wzf ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}-shlibs-$$(arch -s){.tar.gz,}
	cd ${WRKSRC}/_build/bindist && \
		ln -sf ghc-${GHC_VERSION}{,.${BOOTSTRAP_DATE}} && \
		pax -w ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}/* | \
		xz -9 > ${WRKBUILD}/ghc-${GHC_VERSION}.${BOOTSTRAP_DATE}-$$(arch -s).tar.xz

.include <bsd.port.mk>
