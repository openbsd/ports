COMMENT = 		Erlang build tool

GH_ACCOUNT =		erlang
GH_PROJECT =		rebar3
GH_TAGNAME =		3.23.0
CATEGORIES =		devel
HOMEPAGE =		https://www.rebar3.org
MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/erlang

# for tests
MODERL_MODULES += 	meck	0.8.13
MODERL_HANDLE_FLAVORS=	Yes
CONFIGURE_STYLE =	None

DISTFILES =		rebar3-{}${GH_TAGNAME}.tar.gz

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bootstrap \
		${WRKSRC}/apps/rebar/src/rebar_prv_escriptize.erl \
		${WRKSRC}/vendor/relx/priv/templates/bin \
		${WRKSRC}/vendor/relx/priv/templates/extended_bin

do-build:
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${WRKSRC}/bootstrap

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar3 ${PREFIX}/bin/rebar3-${MODERL_VERSION}

PORTHOME=	${WRKDIR}
do-test:
	cd ${WRKSRC} && \
	    ${SETENV} ${ALL_TEST_ENV} ./rebar3 escriptize && \
	    ${SETENV} ${ALL_TEST_ENV} ./rebar3 ct

.include <bsd.port.mk>
