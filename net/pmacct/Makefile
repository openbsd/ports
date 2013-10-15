# $OpenBSD: Makefile,v 1.18 2013/10/15 10:29:46 espie Exp $

COMMENT=	IP accounting software

DISTNAME=	pmacct-0.12.5
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://www.pmacct.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pcap z sqlite3>=8

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --enable-64bit \
		--enable-ipv6 \
		--enable-sqlite3 \
		--with-sqlite3-includes="/usr/include"
.ifdef DEBUG
MAKE_ARGS+=	DEBUG=1
.endif

CONFIGURE_ENV += ac_cv_prog_MAKE="/usr/bin/make"
FLAVORS=	mysql postgresql threads
FLAVOR?=

.if ${FLAVOR:Mpostgresql}
LIB_DEPENDS+=	databases/postgresql
WANTLIB +=	pq>=2
CONFIGURE_ARGS+= --enable-pgsql \
		--with-pgsql-includes="${LOCALBASE}/include/postgresql/"
.else
CONFIGURE_ARGS+= --disable-pgsql
.endif

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=	databases/mysql
WANTLIB +=	lib/mysql/mysqlclient>=10
CONFIGURE_ARGS+= --enable-mysql
.else
CONFIGURE_ARGS+= --disable-mysql
.endif

.if ${FLAVOR:Mthreads}
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
