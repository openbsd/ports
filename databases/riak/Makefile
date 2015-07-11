# $OpenBSD: Makefile,v 1.22 2015/07/11 12:57:05 jasper Exp $

COMMENT=			distributed data store
DISTNAME=			riak-2.0.4
REVISION=			6
CATEGORIES=			databases
HOMEPAGE=			http://basho.com/

MAINTAINER=			Jonathan Matthew <jmatthew@openbsd.org>

ONLY_FOR_ARCHS=			amd64

# Apache License 2.0
PERMIT_PACKAGE_CDROM=		Yes

MASTER_SITES=			http://s3.amazonaws.com/downloads.basho.com/riak/2.0/2.0.4/

RIAK_VERSIONS= \
RIAK            2.0.4 \
ERTS            5.10.4 \
ASN1            2.0.4 \
BASHO_STATS     1.0.3 \
BEAR            0.1.3p1-0-gda820a1 \
BITCASK         1.7.0 \
CANOLA          2.0.0-0-g9bdfee8 \
CLIQUE          0.2.4-0-g14a0966 \
CLUSTER_INFO    2.0.0-0-g1fae829 \
COMPILER        4.9.4 \
CRYPTO          3.2 \
CUTTLEFISH      2.0.0-34-ga459ba6 \
ELEVELDB        2.0.0-3-g10fcb78 \
EPER            0.78-0-g7222eca \
ERLANG_JS       1.3.0-0-g07467d8 \
ERLYDTL         0.7.0 \
ET              1.4.4.5 \
EUNIT           2.2.6 \
EXOMETER_CORE   1.0.0-basho1-0-ga46aa8b \
FOLSOM          0.7.4p4-0-ge80bd01 \
GETOPT          0.4.3 \
GOLDRUSH        0.1.6 \
GS              1.5.15.2 \
HIPE            3.10.2.2 \
INETS           5.9.8 \
KERNEL          2.16.4 \
LAGER           2.0.3 \
LAGER_SYSLOG    2.0.3 \
LUCENE_PARSER   1 \
MECK            0.8.1-0-g2b25a30 \
MERGE_INDEX     2.0.0-0-gb701dde \
MNESIA          4.11 \
MOCHIWEB        1.5.1p6 \
OBSERVER        1.3.1.2 \
OS_MON          2.2.14 \
OTP_MIBS        1.0.8 \
PARSE_TRANS     2.9-0-g82cc002 \
PBKDF2          2.0.0-0-g7076584 \
POOLBOY         0.8.1p2-0-g84d836a \
PROTOBUFFS      0.8.1p4-0-g5257dfe \
PUBLIC_KEY      0.21 \
RIAK_API        2.0.1-6-g618cab1 \
RIAK_AUTH_MODS  2.0.0-1-g9ae39fe \
RIAK_CONTROL    2.0.0-1-gadc50dc \
RIAK_CORE       2.0.1-93-g0562e0b \
RIAK_DT         2.0.0-11-g38797a0 \
RIAK_ENSEMBLE   2.0.0-1-gd66a102 \
RIAK_KV         2.0.2-30-g23de41a \
RIAK_PB         2.0.0.16-0-gfc18a9b \
RIAK_PIPE       2.0.0-8-g4662392 \
RIAK_SEARCH     2.0.0-7-g86bfb89 \
RIAK_SYSMON     2.0.0 \
RIAKNOSTIC      2.0.0-0-g4e7daa5 \
RUNTIME_TOOLS   1.8.13 \
SASL            2.3.4 \
SETUP           1.4-0-g51ee7c9 \
SEXT            1.1p3-0-g846b9cc \
SIDEJOB         2.0.0-0-gc5aabba \
SNMP            4.25 \
SSL             5.3.3 \
STDLIB          1.19.4 \
SYNTAX_TOOLS    1.6.13 \
SYSLOG          1.0.2 \
TOOLS           2.6.13 \
WEBMACHINE      1.10.5-0-ge5f8233 \
WEBTOOL         0.8.9.2 \
WX              1.1.2 \
XMERL           1.3.6 \
SNAPPY          1.0.4

.for _n _v in ${RIAK_VERSIONS}
${_n}_V=${_v}
SUBST_VARS+=${_n}_V
.endfor

MAKE_ENV =	MAKE=${MAKE_PROGRAM}
MAKE_FLAGS =	rel

MODULES =	lang/erlang

# configure bundled snappy correctly
WRKCONF = ${WRKSRC}/deps/eleveldb/c_src/snappy-${SNAPPY_V}
MODGNU_CONFIG_GUESS_DIRS = ${WRKCONF}
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-pic --disable-gtest

snappy_AUTOCONF_VERSION = 2.65
snappy_AUTOMAKE_VERSION = 1.11

WANTLIB = c crypto m ncurses pthread ssl stdc++ util mozjs nspr4 pam

MODERL_BUILD_DEPENDS=devel/rebar
BUILD_DEPENDS+=	devel/autoconf/${snappy_AUTOCONF_VERSION} \
		devel/automake/${snappy_AUTOMAKE_VERSION} \
		devel/libtool \
		lang/erlang/16,-wx
LIB_DEPENDS =	lang/spidermonkey \
		security/openpam
RUN_DEPENDS =	lang/erlang/16,-wx

versions:
.for _n _v in ${RIAK_VERSIONS}
	@echo ${_n} ${_v}
.endfor

# Overwrite local copy of rebar
post-extract:
	cp ${LOCALBASE}/bin/rebar16 ${WRKSRC}/rebar

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
	# tweak libtool to generate a static convenience (pic) snappy library
	perl -pi \
	    -e 's/^lib_LTLIBRARIES/noinst_LTLIBRARIES/;' \
	    -e 's/^libsnappy_la_LDFLAGS/#$$&/;' \
	    ${WRKSRC}/deps/eleveldb/c_src/snappy-${SNAPPY_V}/Makefile.am
	cd ${WRKSRC}/deps/eleveldb/c_src/snappy-${SNAPPY_V}/ && ${SETENV} \
	    AUTOCONF_VERSION=${snappy_AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${snappy_AUTOMAKE_VERSION} \
	    ./autogen.sh
	mkdir -p ${WRKSRC}/rel/riak/etc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/riak ${PREFIX}/share/riak
	cp -r ${WRKSRC}/rel/riak/lib ${PREFIX}/lib/riak
	cp -r ${WRKSRC}/rel/riak/releases/ ${PREFIX}/lib/riak
	cp -r ${WRKSRC}/rel/riak/erts-${ERTS_V}/ ${PREFIX}/lib/riak
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/riak
	chmod ${BINMODE} ${PREFIX}/lib/riak/erts-${ERTS_V}/bin/nodetool
.for s in riak riak-admin riak-debug search-cmd
	${INSTALL_SCRIPT} ${WRKSRC}/rel/riak/bin/${s} ${PREFIX}/sbin
	zcat ${WRKSRC}/doc/man/man1/${s}.1.gz | sed -Ee 's/^(\.Dd [0-9-]+).*/\1/' \
		> ${PREFIX}/man/man1/${s}.1
.endfor
	${INSTALL_DATA} ${WRKSRC}/rel/riak/etc/riak.conf ${PREFIX}/share/riak
	chmod 755 ${PREFIX}/lib/riak/lib/{app_epath.sh,env.sh}

.include <bsd.port.mk>
