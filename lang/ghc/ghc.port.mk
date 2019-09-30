# $OpenBSD: ghc.port.mk,v 1.44 2019/09/30 11:44:18 kili Exp $
# Module for Glasgow Haskell Compiler

# Not yet ported to other architectures
ONLY_FOR_ARCHS =	i386 amd64

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
MODGHC_VER =		8.6.4
SUBST_VARS +=		MODGHC_VER

MODGHC_BIN =		${LOCALBASE}/bin/ghc

# The following is for depending ports only.  GHC itself just needs
# MODGHC_VER and ONLY_FOR_ARCHS. This is a little bit ugly, but
# depending ports using CABAL tend to install into locations as
# lib/Foo-${FooVersion}/ghc-${MODGHC_VER}, so they need the exact
# version of ghc. Depending ports thus need full depends specs,
# i.e. RUN_DEPENDS = lang/ghc=${MODGHC_VER}, and not
# just lang/ghc.
.if ${PKGPATH} != "lang/ghc"
BUILD_DEPENDS +=	lang/ghc

# Set to "cabal" to get the typical Cabal targets defined. Add "haddock"
# to generate API documentation using Haddock. Add "register" to create
# and include a package registration file in
# ${PREFIX}/lib/ghc/package.conf.d (you'll still have to add the
# necessary @tag ghc-pkg-recache to your PLIST by hand).
# Add "nort" if the port doesn't depend on the GHC runtime. This will
# also turn off the default "hs-" prefix for PKGNAME.
# If "nort" is not added, MODGHC_PACKAGE_KEY may be set to the 'package
# key' of the library built and will be added to SUBST_VARS.
# Finally, set it to or add "hackage" if the distfiles are available on
# hackage.haskell.org.

MODGHC_BUILD ?=

. if !${MODGHC_BUILD:L:Mnort}
PKGNAME ?=		hs-${DISTNAME}
RUN_DEPENDS +=		lang/ghc=${MODGHC_VER}
CATEGORIES +=		lang/ghc
MODGHC_PACKAGE_KEY ?=
.  if ${MODGHC_PACKAGE_KEY} != ""
SUBST_VARS +=			MODGHC_PACKAGE_KEY
.  endif
. endif

. if ${MODGHC_BUILD:L:Mhackage}
MODGHC_HACKAGE_NAME =		${DISTNAME:C,-[0-9.]*$,,}
MODGHC_HACKAGE_VERSION =	${DISTNAME:C,.*-([0-9.]*)$,\1,}
HOMEPAGE ?=			https://hackage.haskell.org/package/${MODGHC_HACKAGE_NAME}
MASTER_SITES =			https://hackage.haskell.org/package/${DISTNAME}/
SUBST_VARS +=			DISTNAME MODGHC_HACKAGE_VERSION
DIST_SUBDIR ?=			ghc
. endif

. if ${MODGHC_BUILD:L:Mcabal}
MODGHC_SETUP_SCRIPT ?=		Setup.lhs Setup.hs
MODGHC_SETUP_PROG ?=		${WRKSRC}/Setup
MODGHC_SETUP_CONF_ARGS +=	--with-gcc="${CC}"
MODGHC_SETUP_CONF_ENV ?=

.  if !${MODGHC_BUILD:L:Mnort}
MODGHC_SETUP_CONF_ARGS +=	--datasubdir=hs-\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--docdir=\$$datadir/doc/hs-\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--libsubdir=ghc/\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--dynlibdir=${PREFIX}/lib/ghc/\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--enable-library-profiling
.  else
# Override Cabal defaults, which are $arch-$os-$compiler/$pkgid for
# datasubdir and libsubdir, $datadir/doc/$arch-$os-$compiler/$pkgid
# for docdir and ${PREFIX}/lib/$arch-$os-$compiler/$pkgid for dynlibdir.
MODGHC_SETUP_CONF_ARGS +=	--datasubdir=\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--libsubdir=\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--dynlibdir=${PREFIX}/lib/ghc/\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--docdir=\$$datadir/doc/\$$pkgid
.  endif

# Little hack to let ports still add CONFIGURE_STYLE = autoconf and go
# without a do-configure: target (some Haskell ports are built with
# Cabal but use autohell for the documentation):
MODCABAL_configure = \
	cd ${WRKSRC} && \
	for s in ${MODGHC_SETUP_SCRIPT}; do \
		test -f "$$s" && \
		${MODGHC_BIN} --make \
			-o ${MODGHC_SETUP_PROG} "$$s" && \
		break; \
	done && \
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MODGHC_SETUP_CONF_ENV} \
		${MODGHC_SETUP_PROG} \
			configure -v -g -O --prefix=${PREFIX} \
			${MODGHC_SETUP_CONF_ARGS}

CONFIGURE_STYLE +=		CABAL

MODGHC_BUILD_TARGET = \
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		${MODGHC_SETUP_PROG} build -v
.  if ${MODGHC_BUILD:L:Mhaddock}
MODGHC_BUILD_TARGET += \
	;cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		${MODGHC_SETUP_PROG} haddock
.  endif
.  if ${MODGHC_BUILD:L:Mregister}
MODGHC_BUILD_TARGET += \
	;cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		${MODGHC_SETUP_PROG} register --gen-pkg-config
.  endif

MODGHC_INSTALL_TARGET = \
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		${MODGHC_SETUP_PROG} copy --destdir=${DESTDIR}
.  if ${MODGHC_BUILD:L:Mregister}
MODGHC_INSTALL_TARGET += \
	;${INSTALL_DATA_DIR} ${PREFIX}/lib/ghc/package.conf.d && \
	${INSTALL_DATA} ${WRKBUILD}/${DISTNAME}.conf \
		${PREFIX}/lib/ghc/package.conf.d/
.  endif

MODGHC_TEST_TARGET = \
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${MODGHC_SETUP_PROG} test

.  if !target(do-build)
do-build:
	@${MODGHC_BUILD_TARGET}
.  endif

.  if !target(do-install)
do-install:
	@${MODGHC_INSTALL_TARGET}
.  endif

.  if !target(do-test)
do-test:
	@${MODGHC_TEST_TARGET}
.  endif
. endif
.endif
