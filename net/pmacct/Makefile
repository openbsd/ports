COMMENT=	passive IP network monitoring tools: traffic accounting, etc

DISTNAME=	pmacct-1.7.7
CATEGORIES=	net

HOMEPAGE=	http://www.pmacct.net/
MASTER_SITES=	http://www.pmacct.net/

# partly GPLv2 partly ISC (in transition to ISC)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cdada jansson m maxminddb pcap pthread
WANTLIB += sodium sqlite3 z zmq

FLAVORS=	mysql postgresql
FLAVOR?=

LIB_DEPENDS+=	databases/sqlite3 \
		devel/jansson \
		devel/libcdada \
		net/libmaxminddb \
		net/zeromq

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --enable-geoipv2 \
		--enable-jansson \
		--enable-sqlite3 \
		--enable-zmq \
		--without-external-deps
MAKE_ENV=	${AUTOCONF_ENV}
USE_GMAKE=	Yes
NO_TEST=	Yes

.if ${FLAVOR:Mpostgresql}
LIB_DEPENDS+=	databases/postgresql
WANTLIB +=	pq>=2
CONFIGURE_ARGS+= --enable-pgsql
.else
CONFIGURE_ARGS+= --disable-pgsql
.endif

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=	databases/mariadb
WANTLIB+=	mariadb
CONFIGURE_ARGS+= --enable-mysql
.else
CONFIGURE_ARGS+= --disable-mysql
.endif

.ifdef DEBUG
MAKE_ARGS+=	DEBUG=1
.endif

post-install:
	mv ${PREFIX}/share/pmacct/docs ${PREFIX}/share/doc/pmacct
	mv ${PREFIX}/share/pmacct/examples ${PREFIX}/share/examples/pmacct
	cd ${WRKSRC}/examples; \
	    ${INSTALL_PROGRAM} lg/pmbgp ${PREFIX}/share/examples/pmacct/lg/; \
	    ${INSTALL_DATA} lg/pmbgp.py ${PREFIX}/share/examples/pmacct/lg/
.if !${FLAVOR:Mmysql}
	rm ${PREFIX}/share/pmacct/sql/*.mysql
.endif
.if !${FLAVOR:Mpostgresql}
	rm ${PREFIX}/share/pmacct/sql/*.pgsql
.endif

.include <bsd.port.mk>
