# $OpenBSD: Makefile,v 1.1.1.1 2012/08/24 07:26:29 jmatthew Exp $

COMMENT=			distributed data store
DISTNAME=			riak-1.2.0
CATEGORIES=			databases
HOMEPAGE=			http://basho.com/

MAINTAINER=			Jonathan Matthew <jmatthew@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=			http://downloads.basho.com.s3-website-us-east-1.amazonaws.com/riak/1.2/1.2.0/

RIAK_VERSIONS= \
RIAK_V          1.2.0 \
ERTS_V          5.9.1 \
ASN1_V		1.7 \
APPMON_V	2.1.14.1 \
BASHO_STATS_V   1.0.2 \
BEAR_V		0.1-0-g7ef9a7b \
BITCASK_V       1.5.1 \
CLUSTER_INFO_V  1.2.2 \
COMPILER_V      4.8.1 \
CRYPTO_V        2.1 \
EBLOOM_V        1.1.1 \
ELEVELDB_V      1.2.2 \
EPER_V          0.61 \
ERLANG_JS_V     1.2.0 \
ERLYDTL_V	0.7.0 \
ET_V            1.4.4.1 \
EUNIT_V         2.2.2 \
FOLSOM_V	0.7-0-g64b24d3 \
GETOPT_V	0.4.3 \
GS_V            1.5.15.1 \
HIPE_V          3.9.1 \
INETS_V         5.9 \
KERNEL_V        2.15.1 \
LAGER_V         1.2.0 \
LUCENE_PARSER_V 1 \
LUKE_V          0.2.5 \
MERGE_INDEX_V   1.2.0 \
MNESIA_V        4.7 \
MOCHIWEB_V      1.5.1 \
OBSERVER_V      1.1 \
OS_MON_V        2.2.9 \
OTP_MIBS_V      1.0.7 \
POOLBOY_V       0.6.1 \
PROTOBUFFS_V    0.7.0 \
PUBLIC_KEY_V    0.15 \
RIAK_API_V	1.2.0 \
RIAK_CONTROL_V  1.2.0 \
RIAK_CORE_V     1.2.0 \
RIAK_KV_V       1.2.0 \
RIAK_PB_V	1.2.0 \
RIAK_PIPE_V     1.2.0 \
RIAK_SEARCH_V   1.2.0 \
RIAK_SYSMON_V   1.1.2 \
RIAKC_V         1.2.1 \
RUNTIME_TOOLS_V 1.8.8 \
SASL_V          2.2.1 \
SEXT_V          0.4.1-0-g362bdd1 \
SNMP_V          4.22 \
SSL_V           5.0.1 \
STDLIB_V        1.18.1 \
SYNTAX_TOOLS_V  1.6.8 \
TOOLS_V         2.6.7 \
WEBMACHINE_V    1.9.2 \
WEBTOOL_V       0.8.9.1 \
WX_V            0.99.2 \
XMERL_V         1.3.1

.for _n _v in ${RIAK_VERSIONS}
${_n}=${_v}
SUBST_VARS+=${_n}
.endfor

USE_GMAKE =			Yes
MAKE_ENV =			MAKE=gmake
MAKE_FLAGS =			rel

WANTLIB = c crypto m ncurses pthread ssl stdc++ util mozjs nspr4 leveldb
LIB_DEPENDS = devel/nspr \
	databases/leveldb>=1.5.0 \
	lang/erlang>=15b.01 \
	lang/spidermonkey

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
