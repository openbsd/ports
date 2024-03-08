# Module for Erlang-based ports or modules

CATEGORIES +=		lang/erlang

USE_GMAKE ?=		Yes

# Default Erlang version to use if MODERL_VERSION is not set.
_MODERL_DEFAULT_VERSION =	25

# Default Erlang flavor to use if MODERL_VERSION is not set,
# and MODERL_HANDLE_FLAVORS is set.
_MODERL_DEFAULT_FLAVOR =	erlang${_MODERL_DEFAULT_VERSION}

# Whether the erlang module should automatically add FLAVORs.
MODERL_HANDLE_FLAVORS ?=	No

# This permits adding FLAVORS automatically, unless FLAVORS are
# already defined or the port defines MODERL_VERSION to tie the port
# to a specific erlang version.
.if !defined(MODERL_VERSION)
.  if ${MODERL_HANDLE_FLAVORS:L:Myes}

# If erlang.port.mk should handle FLAVORS, define a separate FLAVOR
# for each erlang runtime
.    if !defined(FLAVORS)
FLAVORS =	erlang25 erlang26
.    endif

FULLPKGNAME ?=	${MODERL_PKG_PREFIX}-${PKGNAME}

FLAVOR ?=
.    if empty(FLAVOR)
FLAVOR =	${_MODERL_DEFAULT_FLAVOR}
.    endif
.  endif
.endif

MODERL_PKG_PREFIX =	erl${MODERL_VERSION}

.if defined(MODERL_VERSION)
.  if ${MODERL_VERSION} == 25
_MODERL_FLAVOR =	erlang25
.  elif ${MODERL_VERSION} == 26
_MODERL_FLAVOR =	erlang26
.  else
ERRORS +=		"Invalid MODERL_VERSION set: ${MODERL_VERSION}."
.  endif
.else
# When only flavour is set, derive version
.  if !empty(FLAVOR)
.    if ${FLAVOR} == erlang25
MODERL_VERSION ?=	25
_MODERL_FLAVOR ?=	erlang25
.    elif ${FLAVOR} == erlang26
MODERL_VERSION ?=	26
_MODERL_FLAVOR ?=	erlang26
.    endif
.  endif
.endif

# Fall back to default
MODERL_VERSION ?=	${_MODERL_DEFAULT_VERSION}
_MODERL_FLAVOR ?=	${_MODERL_DEFAULT_FLAVOR}

# If no configure style is set, then assume "rebar3"
.if ${CONFIGURE_STYLE} == ""
CONFIGURE_STYLE =	rebar3
.endif

.if ${CONFIGURE_STYLE} == "rebar3"
MODERL_BUILD_DEPENDS +=	devel/rebar3,${_MODERL_FLAVOR}
REBAR_BIN ?=		${LOCALBASE}/bin/rebar3-${MODERL_VERSION}
# Make sure rebar gets called as 'rebar3', otherwise escript tries to call the
# binary name (e.g. rebar3-25) as the script entrypoint.
_MODERL_LINKS +=	rebar3-${MODERL_VERSION} rebar3
.endif

# Append the flavor to all the Erlang dependencies
.for b in ${MODERL_BUILD_DEPENDS}
_MODERL_BDEPS +=	${b},${_MODERL_FLAVOR}
.endfor

.for r in ${MODERL_RUN_DEPENDS}
_MODERL_RDEPS +=	${r},${_MODERL_FLAVOR}
.endfor

.for t in ${MODERL_TEST_DEPENDS}
_MODERL_TDEPS +=	${t},${_MODERL_FLAVOR}
.endfor


MODERL_BUILDDEP ?=	Yes
MODERL_RUNDEP ?=	Yes

MODERL_WX ?=		No

.if ${MODERL_WX:L} == yes
_MODERL_BDEPS +=	lang/erlang/${MODERL_VERSION},-wx
_MODERL_RDEPS +=	lang/erlang/${MODERL_VERSION},-wx
.endif

.if ${MODERL_BUILDDEP:L} == yes
BUILD_DEPENDS +=	${_MODERL_BDEPS} \
			lang/erlang/${MODERL_VERSION}
.endif

.if ${MODERL_RUNDEP:L} == yes
RUN_DEPENDS +=		${_MODERL_RDEPS} \
			lang/erlang/${MODERL_VERSION}
.endif

TEST_DEPENDS +=		${_MODERL_TDEPS}

# Root directory of all Erlang libraries.
MODERL_BASEDIR ?=	${PREFIX}/lib/erlang${MODERL_VERSION}/
ERL_LIBROOT ?=		${MODERL_BASEDIR}/lib
MODERL_LIBROOT ?=	lib/erlang${MODERL_VERSION}/lib

# Standard directory into which a module/library gets installed.
ERL_LIBDIR ?=		${ERL_LIBROOT}/${DISTNAME}

# Common program shortcuts
MODERL_ERL =		${LOCALBASE}/bin/erl${MODERL_VERSION}
MODERL_ERLC =		${LOCALBASE}/bin/erlc${MODERL_VERSION}

# In order to prevent patching every single Erlang-using port (there's no
# pkg-config like system to retrieve binary names), symlink the binaries
# the build will use.
_MODERL_LINKS +=	erl${MODERL_VERSION} erl \
			erlc${MODERL_VERSION} erlc \
			erl_call${MODERL_VERSION} erl_call \
			epmd${MODERL_VERSION} epmd \
			escript${MODERL_VERSION} escript

.if !empty(_MODERL_LINKS)
.  for _src _dest in ${_MODERL_LINKS}
MODERLANG_post-patch += ln -sf ${LOCALBASE}/bin/${_src} ${WRKDIR}/bin/${_dest};
.  endfor
.endif

# Some modules don't have a 'version' set and try to retrieve this through git.
# Patch the .app.src files to have ${VERSION} and set ERL_APP_SUBST=Yes.
.if defined(ERL_APP_SUBST) && ${ERL_APP_SUBST:L} == "yes"
.if ! target(pre-configure)
pre-configure:
	cd ${WRKSRC}/src/ && ${SUBST_CMD} *.app.src
.endif
.endif

.if ${CONFIGURE_STYLE:L} == "rebar3"
# Some modules bundle their own rebar escript, force them to use the system
# rebar instead.
# While here, remove the deps{} block from rebar.config, we cannot download
# dependencies on the fly (blocked by systrace) and it obfuscates dependency
# management from the ports Makefile.
.  if ! target(pre-build)
pre-build:
	@cp -f ${REBAR_BIN} ${WRKSRC}/rebar3
	@perl -pi -e 'BEGIN{undef $$/;} s/{deps,.*?]}.//smg' ${WRKSRC}/rebar.config
.  endif
.endif

# Add possibility to include additional build or test dependencies from 
# https://hex.pm.
SITE_HEX =		https://repo.hex.pm/tarballs/

SITES.erl ?= 		${SITE_HEX}
MODERL_DIST_SUBDIR ?=	hex_modules

.  for _m _v in ${MODERL_MODULES}
MODERL_DISTFILES += ${MODERL_DIST_SUBDIR}/{}${_m}-${_v}.tar
.  endfor

.  if ! empty(MODERL_MODULES)
.    for _m _v in ${MODERL_MODULES}
MODERL_SETUP_WORKSPACE += mkdir -p ${WRKDIR}/${MODERL_DIST_SUBDIR}/${_m}; \
		tar xf ${FULLDISTDIR}/${MODERL_DIST_SUBDIR}/${_m}-${_v}.tar -C ${WRKDIR}/${MODERL_DIST_SUBDIR}/${_m}; \
		mkdir -p ${WRKSRC}/_checkouts/${_m}; \
		mkdir -p ${WRKSRC}/_build/default/lib; \
		tar xzf ${WRKDIR}/${MODERL_DIST_SUBDIR}/${_m}/contents.tar.gz -C ${WRKSRC}/_checkouts/${_m}; \
		cp -r ${WRKSRC}/_checkouts/${_m} ${WRKSRC}/_build/default/lib/;
.    endfor
MODERLANG_post-extract += ${MODERL_SETUP_WORKSPACE}
.  endif

.  if defined(MODERL_DISTFILES)
DISTFILES.erl += ${MODERL_DISTFILES}
.  endif

# Regression test handling:
# If nothing is explicitly set, then MODERL_TEST=Yes and default
# target 'test' is used. Otherwise, if MODERL_TEST=eunit, then
# TEST_TARGET=eunit
.if defined(NO_TEST) && ${NO_TEST:L:Mno}
.  if ! defined(MODERL_TEST) || \
     defined(MODERL_TEST) && ${MODERL_TEST:L:Myes}
         TEST_TARGET ?= test
.  elif defined(MODERL_TEST) && ${MODERL_TEST:L:Mno}
     NO_TEST = yes
.  elif defined(MODERL_TEST) && ${MODERL_TEST:L:Meunit}
     TEST_TARGET ?= eunit
.endif
.endif

# Helper target for testing code coverage.
.if ! target(dialyzer)
dialyzer:
	cd ${WRKSRC} && ${REBAR_BIN} dialyzer
.endif

SUBST_VARS +=		MODERL_BASEDIR MODERL_LIBROOT VERSION MODERL_VERSION
