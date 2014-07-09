# $OpenBSD: erlang.port.mk,v 1.8 2014/07/09 17:07:38 ajacoutot Exp $
#
# Module for Erlang-based ports or modules

CATEGORIES +=		lang/erlang

USE_GMAKE ?=		Yes

SUBST_VARS +=		VERSION

# If no configure style is set, then assume "rebar"
.if ${CONFIGURE_STYLE} == ""
CONFIGURE_STYLE =	rebar
MODERL_BUILD_DEPENDS +=	devel/rebar
REBAR_BIN ?=		${LOCALBASE}/bin/rebar

# Some modules bundle their own rebar escript, force them to use the system
# rebar instead.
# While here, remove the deps{} block from rebar.config, we cannot download
# dependencies on the fly (blocked by systrace) and it obfuscates dependency
# management from the ports' Makefile.
.  if ! target(pre-build)
pre-build:
	@cp -f /usr/local/bin/rebar ${WRKSRC}
	@perl -pi -e 'BEGIN{undef $$/;} s/{deps,.*?]}.//smg' ${WRKSRC}/rebar.config
.  endif
.endif

# Root directory of all Erlang libraries.
ERL_LIBROOT ?=	${PREFIX}/lib/erlang/lib/

# Standard directory into which a module/library gets installed.
ERL_LIBDIR ?=	${ERL_LIBROOT}${DISTNAME}

MODERL_RUN_DEPENDS +=	lang/erlang

.if defined(MODERL_BUILD_DEPENDS)
BUILD_DEPENDS +=	${MODERL_BUILD_DEPENDS}
.endif

.if defined(MODERL_RUN_DEPENDS)
RUN_DEPENDS +=		${MODERL_RUN_DEPENDS}
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

# Some modules don't have a 'version' set and try to retrieve this through git.
# Patch the .app.src files to have ${VERSION} and set ERL_APP_SUBST=Yes.
.if defined(ERL_APP_SUBST) && ${ERL_APP_SUBST:L} == "yes"
.if ! target(pre-configure)
pre-configure:
	cd ${WRKSRC}/src/ && ${SUBST_CMD} *.app.src
.endif
.endif
