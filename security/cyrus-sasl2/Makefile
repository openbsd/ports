# $OpenBSD: Makefile,v 1.19 2004/10/11 13:19:46 robert Exp $

COMMENT=	"RFC 2222 SASL (Simple Authentication and Security Layer)"

DISTNAME=	cyrus-sasl-2.1.19
PKGNAME=	${DISTNAME}p1
CATEGORIES=     security

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/sasl/

HOMEPAGE=	http://asg.web.cmu.edu/sasl/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS='${LDFLAGS}'
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

CONFIGURE_ARGS+= --with-saslauthd="/var/sasl2" \
		 --enable-gssapi="/usr" \
		 --with-gss_impl="heimdal" \
		 --enable-login \
		 --enable-static \
		 --disable-sample

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config ${WRKSRC}/saslauthd/config

FLAVORS=	db4 sql ldap
FLAVOR?=

.if ${FLAVOR:L:Mdb4}
CONFIGURE_ARGS+=        --with-dblib=berkeley \
                        --with-bdb-libdir="${LOCALBASE}/lib/db4" \
                        --with-bdb-incdir="${LOCALBASE}/include/db4"
LIB_DEPENDS=            lib/db4/db.4::databases/db/v4
.else
CONFIGURE_ARGS+=	--with-dblib=ndbm \
                        --without-bdb-libdir \
                        --without-bdb-incdir
.endif

.if ${FLAVOR:L:Msql}
LIB_DEPENDS+=	lib/mysql/mysqlclient.10::databases/mysql
CONFIGURE_ARGS+=        --with-mysql \
			--without-pgsql \
			--enable-sql
.endif
 
.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=           ldap.2,lber:openldap-client-2.*:databases/openldap
CONFIGURE_ARGS+=        --with-ldap
.endif

post-build:
	rm ${WRKBUILD}/saslauthd/saslauthd.8
	(cd ${WRKBUILD}/saslauthd; \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} testsaslauthd \
	saslauthd.8)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl2
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/sasl2
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/sasl2
	${INSTALL_PROGRAM} ${WRKBUILD}/saslauthd/testsaslauthd ${PREFIX}/sbin

.include <bsd.port.mk>
