# $OpenBSD: Makefile,v 1.37 2019/07/12 20:44:01 sthen Exp $

COMMENT=			distributed data store
DISTNAME=			riak-2.2.5
CATEGORIES=			databases
HOMEPAGE=			http://basho.com/
REVISION=			1

MAINTAINER=			Jonathan Matthew <jmatthew@openbsd.org>

ONLY_FOR_ARCHS=			amd64

# Apache License 2.0
PERMIT_PACKAGE=		Yes

MASTER_SITES=			https://files.tiot.jp/riak/kv/2.2/2.2.5/

RIAK_VERSIONS= \
RIAK            2.2.5 \
ERTS            6.4 \
ASN1            3.0.4 \
BASHO_STATS     1.0.3 \
BEAR            0.1.3p1-0-gda820a1 \
BITCASK         2.0.3 \
CANOLA          2.0.0-0-g9bdfee8 \
CLIQUE          0.3.9-2-gbaed0a0 \
CLUSTER_INFO    2.0.5-0-gd61d055 \
COMPILER        5.0.4 \
CRYPTO          3.5 \
CUTTLEFISH      2.0.11-0-g4f436ba \
EBLOOM		2.0.0 \
ELEVELDB        2.0.34-3-gc565e46 \
EPER            0.78-0-g7222eca \
ERLYDTL         0.7.0 \
ET              1.5 \
EUNIT           2.2.9 \
EXOMETER_CORE   1.0.0-basho9-2-g4c43c77 \
FOLSOM          0.7.4p5-0-g7294452 \
GETOPT          0.8.2 \
GOLDRUSH        0.1.9 \
GS              1.5.15.2 \
HAMCREST	0.4.1 \
HIPE            3.11.3 \
HYPER		1.0 \
INETS           5.10.6 \
KERNEL          3.2 \
LAGER           3.2.2 \
LAGER_SYSLOG    2.1.2 \
MECK            0.8.2 \
MNESIA          4.12.5 \
MOCHIWEB        2.9.0 \
OBSERVER        2.0.4 \
OS_MON          2.3.1 \
OTP_MIBS        1.0.10 \
PARSE_TRANS     2.9.2p1-0-g4517dfc \
PBKDF2          2.0.0-4-g7dfc96e \
POOLBOY         0.8.1p3-6-g66a70a8 \
PROTOBUFFS      0.9.0-8-gf46c6ce \
PUBLIC_KEY      0.23 \
RANCH		0.4.0-p1 \
RIAK_API        2.1.6-1-g82c8200 \
RIAK_AUTH_MODS  2.1.0-0-g31b8b30 \
RIAK_CONTROL    2.1.6-0-gcbf605a \
RIAK_CORE       2.1.9-4-g94d9d6d \
RIAK_DT         2.1.2-10-gfa48c45 \
RIAK_ENSEMBLE   2.1.8-1-g3a8c3d1 \
RIAK_KV         2.1.7-10-g80b13d9 \
RIAK_PB         2.2.0.0-4-g3f65a02 \
RIAK_PIPE       2.1.5-2-gfa1bc67 \
RIAK_REPL	2.1.8-14-g979c867 \
RIAK_REPL_PB_API 2.4.0-1-g3cdd3da \
RIAK_SYSMON     2.1.5-0-g0ab94b3 \
RIAKNOSTIC      2.1.7-0-gdad8939 \
RUNTIME_TOOLS   1.8.16 \
SASL            2.4.1 \
SETUP           1.4-0-g51ee7c9 \
SEXT            1.1p3-0-g846b9cc \
SIDEJOB         2.0.1-1-g891f58b \
SNMP            5.1.1 \
SSH		3.2 \
SSL             6.0 \
STDLIB          2.4 \
STDLIB2         0.0.1-0-g0c33420 \
SYNTAX_TOOLS    1.6.18 \
SYSLOG          1.0.3 \
TOOLS           2.7.2 \
WEBMACHINE      1.10.8-basho1-0-g494d14f \
WEBTOOL         0.8.10 \
WX              1.3.3 \
XMERL           1.3.7 \
SNAPPY          1.0.4

.for _n _v in ${RIAK_VERSIONS}
${_n}_V=${_v}
SUBST_VARS+=${_n}_V
.endfor

MAKE_ENV =	MAKE=${MAKE_PROGRAM} CC=${CC} CXX=${CXX}
MAKE_FLAGS =	rel

MODULES =	lang/erlang
MODERL_WX =	Yes
MODERL_VERSION = 17
SUBST_VARS+=MODERL_VERSION

# configure bundled snappy correctly
WRKCONF = ${WRKSRC}/deps/eleveldb/c_src/snappy-${SNAPPY_V}
MODGNU_CONFIG_GUESS_DIRS = ${WRKCONF}
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-pic --disable-gtest

snappy_AUTOCONF_VERSION = 2.65
snappy_AUTOMAKE_VERSION = 1.11

WANTLIB = c crypto m ncurses pthread ssl ${COMPILER_LIBCXX} util pam

COMPILER =		base-clang ports-gcc base-gcc

MODERL_BUILD_DEPENDS=devel/rebar
BUILD_DEPENDS+=	devel/autoconf/${snappy_AUTOCONF_VERSION} \
		devel/automake/${snappy_AUTOMAKE_VERSION} \
		devel/libtool
LIB_DEPENDS =	security/openpam

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
	    autoreconf -fi
	mkdir -p ${WRKSRC}/rel/riak/etc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/riak ${PREFIX}/share/riak
	cp -r ${WRKSRC}/rel/riak/lib ${PREFIX}/lib/riak
	cp -r ${WRKSRC}/rel/riak/releases/ ${PREFIX}/lib/riak
	cp -r ${WRKSRC}/rel/riak/erts-${ERTS_V}/ ${PREFIX}/lib/riak
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/riak
	chmod ${BINMODE} ${PREFIX}/lib/riak/erts-${ERTS_V}/bin/nodetool
	mv ${PREFIX}/lib/riak/erts-${ERTS_V}/bin/erl ${PREFIX}/lib/riak/erts-${ERTS_V}/bin/erl${MODERL_VERSION}
.for s in riak riak-admin riak-debug
	${INSTALL_SCRIPT} ${WRKSRC}/rel/riak/bin/${s} ${PREFIX}/sbin
	zcat ${WRKSRC}/doc/man/man1/${s}.1.gz | sed -Ee 's/^(\.Dd [0-9-]+).*/\1/' \
		> ${PREFIX}/man/man1/${s}.1
.endfor
	# no man page for riak-repl
	${INSTALL_SCRIPT} ${WRKSRC}/rel/riak/bin/riak-repl ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/rel/riak/etc/riak.conf ${PREFIX}/share/riak
	${INSTALL_DATA} ${WRKSRC}/rel/riak/etc/advanced.config ${PREFIX}/share/riak
	chmod 755 ${PREFIX}/lib/riak/lib/{app_epath.sh,env.sh}

.include <bsd.port.mk>
