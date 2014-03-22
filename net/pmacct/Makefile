# $OpenBSD: Makefile,v 1.19 2014/03/22 23:05:43 sthen Exp $

COMMENT=	IP accounting software

DISTNAME=	pmacct-1.5.0rc2
CATEGORIES=	net

HOMEPAGE=	http://www.pmacct.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pcap pthread sqlite3>=8 z

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes
CONFIGURE_STYLE= autoconf no-autoheader
AUTOCONF_VERSION= 2.13
CONFIGURE_ARGS= --enable-ipv6 \
		--enable-sqlite3 \
		--with-sqlite3-includes="/usr/include"
.ifdef DEBUG
MAKE_ARGS+=	DEBUG=1
.endif

CONFIGURE_ENV += ac_cv_prog_MAKE="/usr/bin/make"
FLAVORS=	mysql postgresql
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pmacct
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pmacct/sql
	${INSTALL_DATA} ${WRKSRC}/{CONFIG-KEYS,FAQS,QUICKSTART,TOOLS,UPGRADE} \
	    ${PREFIX}/share/doc/pmacct/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/pmacct/
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/pmacct/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/pmacct/
	chmod -R a+rX ${PREFIX}/share/examples/pmacct/
	${INSTALL_DATA} ${WRKSRC}/sql/README* ${PREFIX}/share/doc/pmacct/
	${INSTALL_DATA} `find ${WRKSRC}/sql -type f \! -name README*` \
	    ${PREFIX}/share/examples/pmacct/sql/

.include <bsd.port.mk>
