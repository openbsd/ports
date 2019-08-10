# $OpenBSD: Makefile,v 1.29 2019/08/10 21:28:18 sthen Exp $

COMMENT=	passive IP network monitoring tools: traffic accounting, etc

DISTNAME=	pmacct-1.7.1
CATEGORIES=	net

HOMEPAGE=	http://www.pmacct.net/
MASTER_SITES=	http://www.pmacct.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c jansson m maxminddb pcap pthread sodium sqlite3 z zmq

FLAVORS=	mysql postgresql
FLAVOR?=

LIB_DEPENDS+=	databases/sqlite3 \
		devel/jansson \
		net/libmaxminddb \
		net/zeromq

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_STYLE= autoconf no-autoheader
AUTOCONF_VERSION= 2.69

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS= --enable-ipv6 \
		--enable-geoipv2 \
		--enable-jansson \
		--enable-sqlite3 \
		--enable-zmq
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
WANTLIB+=	crypto mysqlclient ssl
CONFIGURE_ARGS+= --enable-mysql
.else
CONFIGURE_ARGS+= --disable-mysql
.endif

.ifdef DEBUG
MAKE_ARGS+=	DEBUG=1
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pmacct \
		${PREFIX}/share/examples/pmacct/{lg,sql}
	cd ${WRKSRC}; ${INSTALL_DATA} [A-Z]!(akefile*) sql/README* \
	    ${PREFIX}/share/doc/pmacct/
	cp -r ${WRKSRC}/examples/!(lg) ${PREFIX}/share/examples/pmacct/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/pmacct/
	chmod -R a+rX ${PREFIX}/share/examples/pmacct/
	cd ${WRKSRC}/examples; \
	    ${INSTALL_PROGRAM} lg/pmbgp ${PREFIX}/share/examples/pmacct/lg/; \
	    ${INSTALL_DATA} lg/pmbgp.py ${PREFIX}/share/examples/pmacct/lg/
	${INSTALL_DATA} ${WRKSRC}/sql/!(README*) \
	    ${PREFIX}/share/examples/pmacct/sql/

.include <bsd.port.mk>
