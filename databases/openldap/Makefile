# $OpenBSD: Makefile,v 1.88 2009/09/15 17:37:21 jasper Exp $

COMMENT-main=	Open source LDAP software (client)
COMMENT-server=	Open source LDAP software (server)

DISTNAME=		openldap-2.3.43
FULLPKGNAME-main=	${DISTNAME:S/-/-client-/}p0
PKGNAME-server=		${DISTNAME:S/-/-server-/}p1

SHARED_LIBS +=	lber                 9.1      # .2.15
SHARED_LIBS +=	ldap                 9.1      # .2.15
SHARED_LIBS +=	ldap_r               9.1      # .2.15
SHARED_LIBS +=	lber-2.3             9.1      # .2.15
SHARED_LIBS +=	ldap-2.3             9.1      # .2.15
SHARED_LIBS +=	ldap_r-2.3           9.1      # .2.15
CATEGORIES=	databases net

HOMEPAGE=	http://www.openldap.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl asn1 com_err gssapi krb5

MASTER_SITES=	ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/ \
		ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/ \
		ftp://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://gd.tuwien.ac.at/infosys/network/OpenLDAP/openldap-release/ \
		http://www.unibase.cz/ldapcz/Programy/Free/OpenLDAP/openldap-release/ \
		ftp://ftp.ntua.gr/mirror/OpenLDAP/openldap-release/

EXTRACT_SUFX=		.tgz

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--localstatedir="/var" \
			--enable-ipv6

# slapd options
CONFIGURE_ARGS+=	--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--enable-rewrite \
			--enable-wrappers \
			--with-cyrus-sasl \
			--enable-spasswd

# slapd modules
CONFIGURE_ARGS+=	--enable-dnssrv \
			--enable-ldap \
			--enable-ldbm \
			--enable-meta \
			--enable-monitor \
			--enable-null \
			--enable-passwd \
			--enable-perl \
			--enable-shell

# slurpd modules
CONFIGURE_ARGS+=	 --enable-slurpd

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/build

REGRESS_TARGET=	test

FLAVORS=	bdb
FLAVOR?=

MULTI_PACKAGES=	-main -server

LIB_DEPENDS+=		sasl2::security/cyrus-sasl2
CPPFLAGS+=		-I${LOCALBASE}/include/sasl

.if ${FLAVOR:L:Mbdb}
BROKEN=			OpenLDAP 2.3 is incompatible with Berkeley DB 4.6
CONFIGURE_ARGS+=	--enable-bdb --enable-hdb
LIB_DEPENDS+=		lib/db4/db.>=4:db->=4,<5:databases/db/v4
CPPFLAGS+=		-I${LOCALBASE}/include/db4
LDFLAGS+=		-L${LOCALBASE}/lib/db4
LIBS+=			-ldb
.else
CONFIGURE_ARGS+=	--disable-bdb --disable-hdb
.endif

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
			LIBS="${LIBS}"

RUN_DEPENDS-server=	:${FULLPKGNAME-main}:databases/openldap
WANTLIB-server=		${WANTLIB} perl util wrap m pthread

USE_LIBTOOL=	Yes

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

pre-configure:
	@perl -pi -e 's,KRB5_LIBS=,KRB5_LIBS="-lgssapi -lkrb5 -lasn1 \
		-lcom_err",g' ${WRKSRC}/configure
.if ${FLAVOR} != "bdb"
	@perl -pi -e 's,database	bdb,database	ldbm,' \
		${WRKSRC}/servers/slapd/slapd.conf
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/*.conf \
		${PREFIX}/share/examples/openldap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/schema/*.schema \
		 ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${WRKSRC}/servers/slapd/DB_CONFIG \
		${PREFIX}/share/examples/openldap
	@rm -r ${DESTDIR}${SYSCONFDIR}/openldap
	@rm -r ${DESTDIR}/var/openldap-data ${DESTDIR}/var/openldap-slurp

.include <bsd.port.mk>
