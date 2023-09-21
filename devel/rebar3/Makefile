COMMENT = 		Erlang build tool

GH_ACCOUNT =		erlang
GH_PROJECT =		rebar3
GH_TAGNAME =		3.22.1
CATEGORIES =		devel
HOMEPAGE =		https://www.rebar3.org
MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

# APLv2
PERMIT_PACKAGE =	Yes

FLAVORS =		erlang25 erlang26
FLAVOR ?=		erlang25

SITES.mod = 	https://repo.hex.pm/tarballs/

.if ${FLAVOR:Merlang25} || ${FLAVOR:Merlang26}
_EV =                   ${FLAVOR:C/.*([0-9][0-9]+\$)/\1/}
RUN_DEPENDS =           lang/erlang/${_EV}
ERL_VERSION =           ${_EV}
.else
ERRORS +=               "Invalid FLAVOR set: ${FLAVOR}"
.endif

EXTRACT_ONLY =		rebar3-${GH_TAGNAME}.tar.gz

# for tests
HEX_MODULES += \
	meck			0.8.13

DISTFILES =		rebar3-{}${GH_TAGNAME}.tar.gz
.for _m _v in ${HEX_MODULES}
DISTFILES.mod += ${_m}-${_v}.tar
.endfor

BUILD_DEPENDS += 	${RUN_DEPENDS}

SUBST_VARS = 		ERL_VERSION


pre-configure:
	${SUBST_CMD} ${WRKSRC}/bootstrap \
		${WRKSRC}/apps/rebar/src/rebar_prv_escriptize.erl \
		${WRKSRC}/vendor/relx/priv/templates/bin \
		${WRKSRC}/vendor/relx/priv/templates/extended_bin

do-build:
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${WRKSRC}/bootstrap

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar3 ${PREFIX}/bin/rebar3-${ERL_VERSION}

PORTHOME=	${WRKDIR}
do-test:
.for _m _v in ${HEX_MODULES}
	mkdir -p ${WRKDIR}/${_m}
	tar xf ${FULLDISTDIR}/${_m}-${_v}.tar -C ${WRKDIR}/${_m}

	mkdir -p ${WRKSRC}/_checkouts/${_m}
	tar xzf ${WRKDIR}/${_m}/contents.tar.gz -C ${WRKSRC}/_checkouts/${_m}
	cp -r ${WRKSRC}/_checkouts/${_m} ${WRKSRC}/_build/default/lib/
.endfor
	cd ${WRKSRC} && \
	    ${SETENV} ${ALL_TEST_ENV} ./rebar3 escriptize && \
	    ${SETENV} ${ALL_TEST_ENV} ./rebar3 ct

.include <bsd.port.mk>
