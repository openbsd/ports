# Module for building Haskell programs with cabal-install.
# Inspired by FreeBSD cabal.mk by Gleb Popov.

# Input variables:
#
#  MODCABAL_STEM - the name of the package on hackage.
#  MODCABAL_VERSION  - the version of the package.
#  MODCABAL_MANIFEST - hackage dependencies required by this package, triples
#    of space separate <package> <version> <revision>. Typically generated
#    with cabal-bundler program from cabal-extras, e.g.
#    cabal-bundler --openbsd darcs-2.16.2
#  MODCABAL_DATA_DIR - data-dir from .cabal file (if the port needs the data)
#    https://cabal.readthedocs.io/en/latest/cabal-package.html#pkg-field-data-dir
#  MODCABAL_REVISION - Numeric revision of .cabal file on hackage if one is
#    needed on top of .cabal file contained in the .tar.gz file.
#  MODCABAL_BUILD_ARGS - passed to cabal v2-build, e.g. make MODCABAL_BUILD_ARGS=-v
#    is a nice debugging aid.
#  MODCABAL_FLAGS - passed to --flags= of cabal v2-build. Seemingly superfluous given
#    MODCABAL_BUILD_ARGS, but it is useful to keep this value separate as it
#    is used to generate the build plan and will be available without parsing.
#  MODCABAL_EXECUTABLES - Executable target in .cabal file, by default uses
#    the hackage package name.
#    https://cabal.readthedocs.io/en/latest/cabal-package.html#executables
#
# Available output variables:
#
#  MODCABAL_BUILT_EXECUTABLE_${_exe} is built for each of MODCABAL_EXECUTABLES.
#    These are available for `make test` after `make build` phase.
#
# Special files:
#   files/cabal.project is used automatically.

ONLY_FOR_ARCHS ?=	i386 amd64

BUILD_DEPENDS +=	devel/cabal-install>=3.4.0.0 \
			lang/ghc>=8.6.4

# Takes over :9 site for hackage. The day when we have a port using
# both Go/Rust and Hackage we'll have to resolve their common
# insistance on grabbing :9.
MASTER_SITES9 =		https://hackage.haskell.org/package/

DIST_SUBDIR ?= 		hackage

# The .cabal files are explicitly copied over the ones extracted from
# archives by the normal extraction rules.
EXTRACT_CASES += *.cabal) ;;

DISTNAME ?=		${MODCABAL_STEM}-${MODCABAL_VERSION}
HOMEPAGE ?=		${MASTER_SITES9}${MODCABAL_STEM}
MASTER_SITES ?=		${MASTER_SITES9}${DISTNAME}/
DISTFILES ?=		${DISTNAME}.tar.gz
SUBST_VARS +=		MODCABAL_STEM MODCABAL_VERSION PKGNAME

# Oftentime our port name and the executable name coincide.
MODCABAL_EXECUTABLES ?=	${MODCABAL_STEM}

# Cabal won't download anything from hackage if config file exists.
MODCABAL_post-extract = \
	mkdir -p ${WRKDIR}/.cabal \
	&& touch ${WRKDIR}/.cabal/config

# Some packages need an updated .cabal file from hackage to overwrite
# the one in the tar ball.
.if defined(MODCABAL_REVISION)
DISTFILES += ${DISTNAME}_${MODCABAL_REVISION}{revision/${MODCABAL_REVISION}}.cabal
MODCABAL_post-extract += \
	&& cp ${FULLDISTDIR}/${DISTNAME}_${MODCABAL_REVISION}.cabal \
		${WRKSRC}/${MODCABAL_STEM}.cabal
.endif

# The dependent sources get downloaded from hackage.
.for _package _version _revision in ${MODCABAL_MANIFEST}
DISTFILES += {${_package}-${_version}/}${_package}-${_version}.tar.gz:9
.  if ${_revision} > 0
DISTFILES += ${_package}-${_version}_${_revision}{${_package}-${_version}/revision/${_revision}}.cabal:9
MODCABAL_post-extract += \
	&& cp ${FULLDISTDIR}/${_package}-${_version}_${_revision}.cabal \
		${WRKDIR}/${_package}-${_version}/${_package}.cabal
.  endif
# References all the locally available dependencies.  Ideally these
# should be command line options, tracking issue:
# https://github.com/haskell/cabal/issues/3585
MODCABAL_post-extract += \
	&& echo "packages: ${WRKDIR}/${_package}-${_version}/${_package}.cabal" >> ${WRKSRC}/cabal.project.local
.endfor  # MODCABAL_MANIFEST

# Automatically copies the cabal.project file if any.
MODCABAL_post-extract += \
	&& (test -f ${FILESDIR}/cabal.project \
	    && cp -v ${FILESDIR}/cabal.project ${WRKSRC}; true)

# Invokes cabal with HOME set up to use .cabal directory created in
# post-extract.
_MODCABAL_CABAL = ${SETENV} ${MAKE_ENV} HOME=${WRKDIR} ${LOCALBASE}/bin/cabal

# Building a cabal package is merely an invocation of cabal v2-build.
MODCABAL_BUILD_TARGET = \
	cd ${WRKBUILD} \
	&& ${_MODCABAL_CABAL} v2-build --offline --disable-benchmarks --disable-tests \
		-w ${LOCALBASE}/bin/ghc \
		-j${MAKE_JOBS} \
		--flags="${MODCABAL_FLAGS}" ${MODCABAL_BUILD_ARGS} \
		${MODCABAL_EXECUTABLES:C/^/exe:&/}

# Install fragment starts this way for uniformity of incremental construction.
MODCABAL_INSTALL_TARGET = true

# Prepares wrapping fragments that only need to be set up once and
# reused across potentially multiple installed executables.
.if defined(MODCABAL_DATA_DIR)
_MODCABAL_LIBEXEC = libexec/cabal
MODCABAL_INSTALL_TARGET += \
	&& mkdir -p ${PREFIX}/${_MODCABAL_LIBEXEC}

MODCABAL_INSTALL_TARGET +=  \
	&& ${INSTALL_DATA_DIR} ${WRKSRC}/${MODCABAL_DATA_DIR} ${PREFIX}/share/${DISTNAME} \
	&& cd ${WRKSRC}/${MODCABAL_DATA_DIR} && umask 022 && pax -rw . ${PREFIX}/share/${DISTNAME}
.endif

# Appends installation fragments for each executable.
.for _exe in ${MODCABAL_EXECUTABLES}
# Exports the path to the executable for testing. The location is
# somewhat hard to predict in advance, thus it is determined at runtime.
MODCABAL_BUILT_EXECUTABLE_${_exe} = $$(find ${WRKSRC}/dist-newstyle -name ${_exe} -type f -perm -a+x)
.  if defined(MODCABAL_DATA_DIR)
# Installs the ELF binary into an auxiliary location and wraps it into
# a script which sets up the environment to point at the data-dir
# files if any.
MODCABAL_INSTALL_TARGET += \
	&& ${INSTALL_PROGRAM} \
		${MODCABAL_BUILT_EXECUTABLE_${_exe}} \
		${PREFIX}/${_MODCABAL_LIBEXEC}/${_exe} \
	&& echo '\#!/bin/sh' > ${PREFIX}/bin/${_exe} \
	&& echo 'export ${_exe}_datadir=${LOCALBASE}/share/${DISTNAME}' >> ${PREFIX}/bin/${_exe} \
	&& echo 'exec ${LOCALBASE}/${_MODCABAL_LIBEXEC}/${_exe} "$$@"' >> ${PREFIX}/bin/${_exe} \
	&& chmod +x ${STAGEDIR}${PREFIX}/bin/${_exe}
.  else
# Skips the launcher script indirection when MODCABAL_DATA_DIR is empty.
MODCABAL_INSTALL_TARGET += \
	&& ${INSTALL_PROGRAM} ${MODCABAL_BUILT_EXECUTABLE_${_exe}} ${PREFIX}/bin
.  endif
.endfor

.if !target(do-build)
do-build:
	@${MODCABAL_BUILD_TARGET}
.endif

.if !target(do-install)
do-install:
	@${MODCABAL_INSTALL_TARGET}
.endif
