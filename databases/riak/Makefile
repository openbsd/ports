# $OpenBSD: Makefile,v 1.7 2013/03/28 03:56:06 jmatthew Exp $

COMMENT=			distributed data store
DISTNAME=			riak-1.3.0
CATEGORIES=			databases
HOMEPAGE=			http://basho.com/
REVISION=			0

MAINTAINER=			Jonathan Matthew <jmatthew@openbsd.org>

ONLY_FOR_ARCHS=			amd64

# Apache License 2.0
PERMIT_PACKAGE_CDROM=		Yes

MASTER_SITES=			http://downloads.basho.com.s3-website-us-east-1.amazonaws.com/riak/1.3/1.3.0/

MASTER_SITES0=			http://dropbox.eait.uq.edu.au/uqjmatt6/distfiles/
BASHO_LEVELDB_V=		1.3.0
DISTNAME0=			basho-leveldb-${BASHO_LEVELDB_V}.tar.gz

DISTFILES=			${DISTNAME}${EXTRACT_SUFX} ${DISTNAME0}:0

RIAK_VERSIONS= \
RIAK_V          1.3.0 \
ERTS_V          5.9.2 \
APPMON_V        2.1.14.1 \
ASN1_V          1.8 \
BASHO_STATS_V   1.0.3 \
BEAR_V          0.1.2-0-g0da736b \
BITCASK_V       1.6.0 \
CLUSTER_INFO_V  1.2.3 \
COMPILER_V      4.8.2 \
CRYPTO_V        2.2 \
ELEVELDB_V      1.3.0 \
EPER_V          0.61 \
ERLANG_JS_V     1.2.2 \
ERLYDTL_V       0.7.0 \
ET_V            1.4.4.2 \
EUNIT_V         2.2.3 \
FOLSOM_V        0.7.3-13-gec3c29c \
GETOPT_V        0.4.3 \
GS_V            1.5.15.1 \
HIPE_V          3.9.2 \
INETS_V         5.9.1 \
KERNEL_V        2.15.2 \
LAGER_V         1.2.2 \
LAGER_SYSLOG_V  1.2.2 \
LUCENE_PARSER_V 1 \
MERGE_INDEX_V   1.3.0 \
MNESIA_V        4.7.1 \
MOCHIWEB_V      1.5.1p3 \
OBSERVER_V      1.2 \
OS_MON_V        2.2.10 \
OTP_MIBS_V      1.0.7 \
POOLBOY_V       0.8.1 \
PROTOBUFFS_V    0.8.0 \
PUBLIC_KEY_V    0.16 \
RIAK_API_V      1.3.0 \
RIAK_CONTROL_V  1.3.0 \
RIAK_CORE_V     1.3.0 \
RIAK_KV_V       1.3.0 \
RIAK_PB_V       1.3.0 \
RIAK_PIPE_V     1.3.0 \
RIAK_SEARCH_V   1.3.0 \
RIAK_SYSMON_V   1.1.3 \
RUNTIME_TOOLS_V 1.8.9 \
SASL_V          2.2.1 \
SEXT_V          0.4.1-0-g362bdd1 \
SNMP_V          4.22.1 \
SSL_V           5.1 \
STDLIB_V        1.18.2 \
SYNTAX_TOOLS_V  1.6.9 \
SYSLOG_V	1.0.1 \
TOOLS_V         2.6.8 \
WEBMACHINE_V    1.9.3 \
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

WANTLIB = c crypto m ncurses pthread ssl stdc++ util mozjs nspr4
LIB_DEPENDS = lang/erlang>=15b.02 lang/spidermonkey

pre-configure:
	cp -r ${WRKDIR}/basho-leveldb-${BASHO_LEVELDB_V} ${WRKSRC}/deps/eleveldb/c_src/leveldb
	mkdir ${WRKSRC}/deps/riaknostic/deps
.for d in lager getopt meck
	cp -r ${WRKSRC}/deps/${d} ${WRKSRC}/deps/riaknostic/deps/${d}
.endfor
	${SUBST_CMD} ${WRKSRC}/deps/eleveldb/rebar.config \
		${WRKSRC}/deps/erlang_js/rebar.config \
		${WRKSRC}/rel/vars.config
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
