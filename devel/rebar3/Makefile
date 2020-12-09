# $OpenBSD: Makefile,v 1.3 2020/12/09 22:50:45 jmatthew Exp $

COMMENT = 		Erlang build tool

V=			3.13.2
PKGNAME=		rebar3-${V}
DISTNAME= 		${V}
CATEGORIES=		devel
HOMEPAGE=		https://www.rebar3.org
MAINTAINER =		Jonathan Matthew <jmatthew@openbsd.org>

# APLv2
PERMIT_PACKAGE=		Yes

FLAVORS =		erlang19 erlang21
FLAVOR ?=		erlang21

MASTER_SITES = 		https://github.com/erlang/rebar3/archive/
MASTER_SITES1 = 	https://repo.hex.pm/tarballs/

WRKDIST = 		${WRKDIR}/rebar3-${V}

.if ${FLAVOR:Merlang19} || ${FLAVOR:Merlang21}
_EV =                   ${FLAVOR:C/.*([0-9][0-9]+\$)/\1/}
RUN_DEPENDS =           lang/erlang/${_EV}
ERL_VERSION =           ${_EV}
.else
ERRORS +=               "Invalid FLAVOR set: ${FLAVOR}"
.endif

EXTRACT_ONLY = 		${V}.tar.gz

HEX_MODULES = \
	bbmustache 		1.8.0 \
	certifi			2.5.1 \
	cf			0.2.2 \
	cth_readable		1.4.6 \
	erlware_commons		1.3.1 \
	eunit_formatters	0.5.0 \
	getopt			1.0.1 \
	parse_trans		3.3.0 \
	providers		1.8.1 \
	relx			3.33.0 \
	ssl_verify_fun		1.1.5

DISTFILES = ${V}.tar.gz
.for _m _v in ${HEX_MODULES}
DISTFILES += ${_m}-${_v}.tar:1
.endfor

BUILD_DEPENDS += 	${RUN_DEPENDS}

SUBST_VARS = 		ERL_VERSION

post-extract:
	# extract hex modules into _build/default/lib for the bootstrap,
	# and _checkouts for rebar3 itself, otherwise it will fetch from hex
	mkdir -p ${WRKSRC}/_build/default/lib
.for _m _v in ${HEX_MODULES}
	mkdir -p ${WRKDIR}/${_m}
	tar xf ${FULLDISTDIR}/${_m}-${_v}.tar -C ${WRKDIR}/${_m}

	mkdir -p ${WRKSRC}/_checkouts/${_m}
	tar xzf ${WRKDIR}/${_m}/contents.tar.gz -C ${WRKSRC}/_checkouts/${_m}
	cp -r ${WRKSRC}/_checkouts/${_m} ${WRKSRC}/_build/default/lib/
.endfor

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bootstrap ${WRKSRC}/src/rebar_prv_escriptize.erl \
		${WRKSRC}/_build/default/lib/relx/priv/templates/bin \
		${WRKSRC}/_build/default/lib/relx/priv/templates/extended_bin

do-build:
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${WRKSRC}/bootstrap

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar3 ${PREFIX}/bin/rebar3-${ERL_VERSION}

.include <bsd.port.mk>
