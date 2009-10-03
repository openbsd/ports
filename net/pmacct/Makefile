# $OpenBSD: Makefile,v 1.1.1.1 2009/10/03 18:54:44 sthen Exp $

COMMENT=	IP accounting software

DISTNAME=	pmacct-0.12.0rc2
CATEGORIES=	net

HOMEPAGE=	http://www.pmacct.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m pcap z

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS+=	sqlite3.>=8::databases/sqlite3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --enable-64bit \
		--enable-ipv6 \
		--enable-sqlite3 \
		--with-sqlite3-includes="${LOCALBASE}/include"
.ifdef DEBUG
MAKE_ARGS+=	DEBUG=1
.endif

FLAVORS=	mysql postgresql threads
FLAVOR?=

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+=	pq.>=2::databases/postgresql
CONFIGURE_ARGS+= --enable-pgsql \
		--with-pgsql-includes="${LOCALBASE}/include/postgresql/"
.else
CONFIGURE_ARGS+= --disable-pgsql
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	lib/mysql/mysqlclient.>=10::databases/mysql
CONFIGURE_ARGS+= --enable-mysql
.else
CONFIGURE_ARGS+= --disable-mysql
.endif

.if ${FLAVOR:L:Mthreads}
WANTLIB += pthread
CONFIGURE_ARGS+= --enable-threads
.else
CONFIGURE_ARGS+= --disable-threads
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pmacct
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pmacct/sql
	${INSTALL_DATA} ${WRKSRC}/CONFIG-KEYS ${PREFIX}/share/doc/pmacct/
	${INSTALL_DATA} ${WRKSRC}/EXAMPLES ${PREFIX}/share/doc/pmacct/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/pmacct/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/pmacct/
	${INSTALL_DATA} ${WRKSRC}/sql/README* ${PREFIX}/share/doc/pmacct/
	${INSTALL_DATA} `find ${WRKSRC}/sql -type f \! -name README*` \
	    ${PREFIX}/share/examples/pmacct/sql/

.include <bsd.port.mk>
