# $OpenBSD: Makefile,v 1.8 2013/10/27 11:24:05 jmatthew Exp $

COMMENT=			distributed data store
DISTNAME=			riak-1.4.2
CATEGORIES=			databases
HOMEPAGE=			http://basho.com/

MAINTAINER=			Jonathan Matthew <jmatthew@openbsd.org>

ONLY_FOR_ARCHS=			amd64

# Apache License 2.0
PERMIT_PACKAGE_CDROM=		Yes

MASTER_SITES=			http://downloads.basho.com.s3-website-us-east-1.amazonaws.com/riak/1.4/1.4.2/

RIAK_VERSIONS= \
RIAK_V          1.4.2 \
ERTS_V          5.9.2 \
APPMON_V        2.1.14.1 \
ASN1_V          1.8 \
BASHO_STATS_V   1.0.3 \
BEAR_V          0.1.3p1-0-gda820a1 \
BITCASK_V       1.6.3 \
CLUSTER_INFO_V  1.2.4 \
COMPILER_V      4.8.2 \
CRYPTO_V        2.2 \
ELEVELDB_V      1.4.2-0-g4df4947 \
EPER_V          0.61 \
ERLANG_JS_V     1.2.2 \
ERLYDTL_V       0.7.0 \
ET_V            1.4.4.2 \
EUNIT_V         2.2.3 \
FOLSOM_V        0.7.4p1-0-g4e485ce \
GETOPT_V        0.4.3 \
GOLDRUSH_V	0.1.2 \
GS_V            1.5.15.1 \
HIPE_V          3.9.2 \
INETS_V         5.9.1 \
KERNEL_V        2.15.2 \
LAGER_V         2.0.0 \
LAGER_SYSLOG_V  2.0.0 \
LUCENE_PARSER_V 1 \
MECK_V		0.8.1 \
MERGE_INDEX_V   1.3.1 \
MNESIA_V        4.7.1 \
MOCHIWEB_V      1.5.1p6 \
OBSERVER_V      1.2 \
OS_MON_V        2.2.10 \
OTP_MIBS_V      1.0.7 \
POOLBOY_V       0.8.1p1 \
PROTOBUFFS_V    0.8.1 \
PUBLIC_KEY_V    0.16 \
RANCH_V         0.4.0-p1 \
RIAK_API_V      1.4.2-0-ga7e00e2 \
RIAK_CONTROL_V  1.4.2-0-g2f08324 \
RIAK_CORE_V     1.4.2 \
RIAK_KV_V       1.4.2-0-g61ac9d8 \
RIAK_PB_V       1.4.1.1 \
RIAK_PIPE_V     1.4.2-0-g59d1bae \
RIAK_SEARCH_V   1.4.2-0-ge31368d \
RIAK_SYSMON_V   1.1.3 \
RIAKNOSTIC_V    1.2.0 \
RUNTIME_TOOLS_V 1.8.9 \
SASL_V          2.2.1 \
SEXT_V          1.1-3-g3af5478 \
SIDEJOB_V       0.2.0 \
SNMP_V          4.22.1 \
SSL_V           5.1 \
STDLIB_V        1.18.2 \
SYNTAX_TOOLS_V  1.6.9 \
SYSLOG_V	1.0.1 \
TOOLS_V         2.6.8 \
WEBMACHINE_V    1.10.4-0-gfcff795 \
WEBTOOL_V       0.8.9.1 \
WX_V            0.99.2 \
XMERL_V         1.3.2

.for _n _v in ${RIAK_VERSIONS}
${_n}=${_v}
SUBST_VARS+=${_n}
.endfor

USE_GMAKE =			Yes
MAKE_ENV =			MAKE=${MAKE_PROGRAM}
MAKE_FLAGS =			rel

# configure bundled snappy correctly
SNAPPY_V = 1.0.4
WRKCONF = ${WRKSRC}/deps/eleveldb/c_src/snappy-${SNAPPY_V}
MODGNU_CONFIG_GUESS_DIRS = ${WRKCONF}
CONFIGURE_STYLE = gnu

WANTLIB = c crypto m ncurses pthread ssl stdc++ util mozjs nspr4
LIB_DEPENDS = lang/erlang>=15b.02 lang/spidermonkey

pre-configure:
	mkdir -p ${WRKSRC}/deps/riaknostic/deps
.for d in lager getopt meck
	cp -r ${WRKSRC}/deps/${d} ${WRKSRC}/deps/riaknostic/deps/${d}
.endfor
	${SUBST_CMD} ${WRKSRC}/deps/eleveldb/rebar.config \
		${WRKSRC}/deps/erlang_js/rebar.config \
		${WRKSRC}/rel/vars.config
	tar xzf ${WRKSRC}/deps/eleveldb/c_src/snappy-${SNAPPY_V}.tar.gz \
		-C ${WRKSRC}/deps/eleveldb/c_src

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/riak ${PREFIX}/share/riak
	cp -r ${WRKSRC}/rel/riak/lib ${PREFIX}/lib/riak
	cp -r ${WRKSRC}/rel/riak/releases/ ${PREFIX}/lib/riak
	cp -r ${WRKSRC}/rel/riak/erts-${ERTS_V}/ ${PREFIX}/lib/riak
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/riak
	chmod ${BINMODE} ${PREFIX}/lib/riak/erts-${ERTS_V}/bin/nodetool
.for s in riak riak-admin search-cmd
	${INSTALL_SCRIPT} ${WRKSRC}/rel/riak/bin/${s} ${PREFIX}/sbin
	zcat ${WRKSRC}/doc/man/man1/${s}.1.gz | sed -Ee 's/^(\.Dd [0-9-]+).*/\1/' \
		> ${PREFIX}/man/man1/${s}.1
.endfor
.for s in app.config vm.args
	${INSTALL_DATA} ${WRKSRC}/rel/riak/etc/${s} ${PREFIX}/share/riak
.endfor

.include <bsd.port.mk>

CONFIGURE_ARGS = --with-pic --prefix=${WRKSRC}/deps/eleveldb/c_src/system
