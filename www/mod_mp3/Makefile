# $OpenBSD: Makefile,v 1.25 2014/03/13 17:33:27 sthen Exp $

COMMENT=	turns Apache into an MP3 or Ogg streaming server

REVISION=	7
DISTNAME=	mod_mp3-0.40
CATEGORIES=	www audio

HOMEPAGE=	http://tangent.org/
MASTER_SITES=	http://download.tangent.org/

MODULES+=	apache-module

# Apache
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=	mysql postgresql
FLAVOR?=

MODAPACHE_NAME=		mp3
MODAPACHE_LOCATION=	${WRKBUILD}/src

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-apxs=${MODAPACHE_APXS} \
			--with-perl=/usr/bin/perl

NO_TEST=	Yes

EXAMPLESRC=	${WRKSRC}/support
CONF=		${EXAMPLESRC}/mp3.conf

.if ${FLAVOR:Mmysql} && ${FLAVOR:Mpostgresql}
ERRORS+= "Fatal: mutually exclusive flavors: ${FLAVORS}"
.endif

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=	databases/mysql
CONFIGURE_ARGS+=--with-mysql="${LOCALBASE}/bin"
CONF=		${EXAMPLESRC}/mp3_with_mysql.conf
EXAMPLES+=	${EXAMPLESRC}/mysql_schema
WANTLIB+=	crypto lib/mysql/mysqlclient>=10 m ssl z
.endif

.if ${FLAVOR:Mpostgresql}
LIB_DEPENDS+=	databases/postgresql
CONFIGURE_ARGS+=--with-postgres="${LOCALBASE}"
CONF=		${FILESDIR}/mp3_with_postgresql.conf
EXAMPLES+=	${EXAMPLESRC}/pgsql_schema
WANTLIB+=	pq>=2
.endif

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_mp3
	${INSTALL_DATA} ${WRKSRC}/faq.html ${PREFIX}/share/doc/mod_mp3
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_mp3
	${INSTALL_DATA} ${CONF} ${PREFIX}/share/examples/mod_mp3/mp3.conf
.if defined(EXAMPLES)
	${INSTALL_DATA} ${EXAMPLES} ${PREFIX}/share/examples/mod_mp3
.endif
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
