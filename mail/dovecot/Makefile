# $OpenBSD: Makefile,v 1.289 2020/05/18 17:45:53 sthen Exp $

COMMENT-server=	compact IMAP/POP3 server
COMMENT-ldap=	LDAP authentication / dictionary support for Dovecot
COMMENT-mysql=	MySQL authentication / dictionary support for Dovecot
COMMENT-postgresql= PostgreSQL authentication / dictionary support for Dovecot

V_MAJOR=	2.3
V_DOVECOT=	2.3.10.1
EPOCH=		0

DISTNAME=	dovecot-${V_DOVECOT}
PKGNAME=	dovecot-${V_DOVECOT}
PKGNAME-server=	dovecot-${V_DOVECOT}
PKGSPEC-server=	dovecot-=${V_DOVECOT}v0
PKGNAME-ldap=	dovecot-ldap-${V_DOVECOT}
PKGNAME-mysql=	dovecot-mysql-${V_DOVECOT}
PKGNAME-postgresql= dovecot-postgresql-${V_DOVECOT}
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/${V_MAJOR}/

SHARED_LIBS=	dovecot-compression 1.0 \
		dovecot-dsync	1.0 \
		dovecot-fts	1.0 \
		dovecot-lda	3.0 \
		dovecot-ldap    1.0 \
		dovecot-login	3.0 \
		dovecot-sql	3.0 \
		dovecot-storage	3.0 \
		dovecot		3.0

HOMEPAGE=	https://dovecot.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1 and MIT
PERMIT_PACKAGE=	Yes

WANTLIB-server=	bz2 c crypto expat iconv lz4 lzma m pthread sqlite3 ssl z sodium
WANTLIB-ldap=	crypto iconv lber ldap sasl2 ssl lib/dovecot/dovecot
WANTLIB-mysql=	crypto iconv m mariadb pthread ssl z
WANTLIB-postgresql= crypto m pq ssl

LIB_DEPENDS+=	archivers/bzip2 \
		archivers/lz4 \
		archivers/xz \
		converters/libiconv \
		databases/sqlite3 \
		security/libsodium
LIB_DEPENDS-ldap= ${BASE_PKGPATH} \
		databases/openldap
LIB_DEPENDS-mysql= databases/mariadb
RUN_DEPENDS-mysql= ${BASE_PKGPATH}
LIB_DEPENDS-postgresql= databases/postgresql
RUN_DEPENDS-postgresql= ${BASE_PKGPATH}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-rundir=/var/dovecot \
		--with-sql=plugin \
		--with-sqlite \
		--with-statedir=/var/dovecot \
		--without-icu \
		--without-nss \
		--without-pam \
		--without-shadow \
		--with-solr \
		--without-stemmer \
		--without-textcat \
		--without-vpopmail
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PSEUDO_FLAVORS=	no_db no_ldap no_mysql no_postgresql
FLAVOR?=
.if ${FLAVOR:Mno_db}
FLAVOR+=	no_ldap no_mysql no_postgresql
.endif

MULTI_PACKAGES= -server -ldap -mysql -postgresql
SUBPACKAGE?=	-server

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=--with-ldap=plugin
.endif

.if ${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+=--with-mysql
.endif

.if ${BUILD_PACKAGES:M-postgresql}
CONFIGURE_ARGS+=--with-pgsql
.endif

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/example-config/conf.d/10-mail.conf

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh
	@rm ${PREFIX}/share/doc/dovecot/{dovecot-openssl.cnf,mkcert.sh}
	@find ${PREFIX}/lib/dovecot \( -name '*.a' -o -name '*.la' \) -delete

.include <bsd.port.mk>
