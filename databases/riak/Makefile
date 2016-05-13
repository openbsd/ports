# $OpenBSD: Makefile,v 1.27 2016/05/13 04:29:58 jmatthew Exp $

COMMENT=			distributed data store
DISTNAME=			riak-2.1.4
CATEGORIES=			databases
HOMEPAGE=			http://basho.com/

MAINTAINER=			Jonathan Matthew <jmatthew@openbsd.org>

ONLY_FOR_ARCHS=			amd64

# Apache License 2.0
PERMIT_PACKAGE_CDROM=		Yes

MASTER_SITES=			http://s3.amazonaws.com/downloads.basho.com/riak/2.1/2.1.4/

RIAK_VERSIONS= \
RIAK            2.1.4 \
ERTS            6.4 \
ASN1            3.0.4 \
BASHO_STATS     1.0.3 \
BEAR            0.1.3p1-0-gda820a1 \
BITCASK         1.7.2 \
CANOLA          2.0.0-0-g9bdfee8 \
CLIQUE          0.3.2-0-ge332c8f \
CLUSTER_INFO    2.0.3-0-g76c73fc \
COMPILER        5.0.4 \
CRYPTO          3.5 \
CUTTLEFISH      2.0.5-0-g9ff5830 \
ELEVELDB        2.0.17-0-g973fc92 \
EPER            0.78-0-g7222eca \
ERLANG_JS       1.3.0-0-g07467d8 \
ERLYDTL         0.7.0 \
ET              1.5 \
EUNIT           2.2.9 \
EXOMETER_CORE   1.0.0-basho2-0-gb47a5d6 \
FOLSOM          0.7.4p5-0-g7294452 \
GETOPT          0.8.2 \
GOLDRUSH        0.1.7 \
GS              1.5.15.2 \
HIPE            3.11.3 \
INETS           5.10.6 \
KERNEL          3.2 \
LAGER           2.1.1 \
LAGER_SYSLOG    2.1.2 \
LUCENE_PARSER   1 \
MECK            0.8.2 \
MERGE_INDEX     2.0.1-0-g0c8f77c \
MNESIA          4.12.5 \
MOCHIWEB        2.9.0 \
OBSERVER        2.0.4 \
OS_MON          2.3.1 \
OTP_MIBS        1.0.10 \
PARSE_TRANS     2.9-0-g82cc002 \
PBKDF2          2.0.0-0-g7076584 \
POOLBOY         0.8.1p3-0-g8bb45fb \
PROTOBUFFS      0.8.1p5-0-gf88fc3c \
PUBLIC_KEY      0.23 \
RIAK_API        2.1.2-0-gd8d510f \
RIAK_AUTH_MODS  2.1.0-0-g31b8b30 \
RIAK_CONTROL    2.1.2-0-gab3f924 \
RIAK_CORE       2.1.5-0-gb02ab53 \
RIAK_DT         2.1.1-0-ga2986bc \
RIAK_ENSEMBLE   2.1.2-0-g1a79eed \
RIAK_KV         2.1.2-0-gf969bba \
RIAK_PB         2.1.0.2-0-g620bc70 \
RIAK_PIPE       2.1.1-0-gb1ac2cf \
RIAK_SEARCH     2.1.1-0-gffe2113 \
RIAK_SYSMON     2.0.0 \
RIAKNOSTIC      2.1.3-0-g84c0aa5 \
RUNTIME_TOOLS   1.8.16 \
SASL            2.4.1 \
SETUP           1.4-0-g51ee7c9 \
SEXT            1.1p3-0-g846b9cc \
SIDEJOB         2.0.0-0-gc5aabba \
SNMP            5.1.1 \
SSH		3.2 \
SSL             6.0 \
STDLIB          2.4 \
SYNTAX_TOOLS    1.6.18 \
SYSLOG          1.0.3 \
TOOLS           2.7.2 \
WEBMACHINE      1.10.8-0-g7677c24 \
WEBTOOL         0.8.10 \
WX              1.3.3 \
XMERL           1.3.7 \
SNAPPY          1.0.4

.for _n _v in ${RIAK_VERSIONS}
${_n}_V=${_v}
SUBST_VARS+=${_n}_V
.endfor

MAKE_ENV =	MAKE=${MAKE_PROGRAM}
MAKE_FLAGS =	rel

MODULES =	lang/erlang
MODERL_WX =	Yes
MODERL_VERSION = 17

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
		devel/libtool
LIB_DEPENDS =	lang/spidermonkey \
		security/openpam

versions:
.for _n _v in ${RIAK_VERSIONS}
	@echo ${_n} ${_v}
.endfor

# Overwrite local copy of rebar
pre-patch:
	cp ${LOCALBASE}/bin/rebar${MODERL_VERSION} ${WRKSRC}/rebar

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
