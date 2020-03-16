# $OpenBSD: erlang.port.mk,v 1.27 2020/03/16 16:07:45 jasper Exp $
#
# Module for Erlang-based ports or modules

CATEGORIES +=		lang/erlang

USE_GMAKE ?=		Yes

# Default Erlang version to use if MODERL_VERSION is not set.
# XXX: Keep in sync with devel/rebar/Makefile
MODERL_DEFAULT_VERSION =21

# If the port already has flavors, append ours to it unless the port requires
# a specific version of Erlang.
.if !defined(MODERL_VERSION) && !defined(FLAVORS)
FLAVORS ?=		erlang19 erlang21
.else
FLAVORS +=		erlang19 erlang21
.endif

FLAVOR?=		# empty

# When no flavor is explicitly set, assume MODERL_DEFAULT_VERSION
.if ${FLAVOR:Merlang19}
MODERL_VERSION =	19
_MODERL_FLAVOR =	${FLAVOR}
.elif ${FLAVOR:Merlang21}
MODERL_VERSION =	21
_MODERL_FLAVOR =	${FLAVOR}
.else
MODERL_VERSION ?=	${MODERL_DEFAULT_VERSION}
_MODERL_FLAVOR ?=	# empty
.endif

.if ${MODERL_VERSION} == 19
_MODERL_FLAVOR =	erlang19
.elif ${MODERL_VERSION} == 21
_MODERL_FLAVOR =	erlang21
.else
ERRORS +=		"Invalid MODERL_VERSION set: ${MODERL_VERSION}."
.endif

# If no configure style is set, then assume "rebar"
.if ${CONFIGURE_STYLE} == ""
CONFIGURE_STYLE =	rebar
MODERL_BUILD_DEPENDS +=	devel/rebar
REBAR_BIN ?=		${LOCALBASE}/bin/rebar${MODERL_VERSION}
# Make sure rebar gets called as 'rebar', otherwise escript tries to call the
# binary name (e.g. rebar21) as the script entrypoint.
_MODERL_LINKS +=	rebar${MODERL_VERSION} rebar
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

.if ${CONFIGURE_STYLE:L} == "rebar"
# Some modules bundle their own rebar escript, force them to use the system
# rebar instead.
# While here, remove the deps{} block from rebar.config, we cannot download
# dependencies on the fly (blocked by systrace) and it obfuscates dependency
# management from the ports Makefile.
.  if ! target(pre-build)
pre-build:
	@cp -f ${REBAR_BIN} ${WRKSRC}/rebar
	@perl -pi -e 'BEGIN{undef $$/;} s/{deps,.*?]}.//smg' ${WRKSRC}/rebar.config
.  endif
.endif

# Regression test handing:
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
