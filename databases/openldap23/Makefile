# $OpenBSD: Makefile,v 1.3 2011/01/13 15:44:10 pea Exp $

COMMENT=	Open source LDAP software (server)

DISTNAME=		openldap-2.3.43
PKGNAME=		${DISTNAME:S/-/-server-/}
REVISION=		7

CATEGORIES=	databases net

HOMEPAGE=	http://www.openldap.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += 		asn1 c com_err crypto gssapi krb5 m perl pthread ssl \
			util wrap sasl2

MASTER_SITES=	ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/ \
		ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/ \
		ftp://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://gd.tuwien.ac.at/infosys/network/OpenLDAP/openldap-release/ \
		http://www.unibase.cz/ldapcz/Programy/Free/OpenLDAP/openldap-release/ \
		ftp://ftp.ntua.gr/mirror/OpenLDAP/openldap-release/

EXTRACT_SUFX=		.tgz

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
USE_GROFF=		Yes

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

LIB_DEPENDS+=		security/cyrus-sasl2
CPPFLAGS+=		-I${LOCALBASE}/include/sasl

CONFIGURE_ARGS+=	--disable-bdb --disable-hdb

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
			LIBS="${LIBS}"

RUN_DEPENDS=	${BASE_PKGPATH}

USE_LIBTOOL=	Yes

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

pre-configure:
	@perl -pi -e 's,KRB5_LIBS=,KRB5_LIBS="-lgssapi -lkrb5 -lasn1 \
		-lcom_err",g' ${WRKSRC}/configure
	@perl -pi -e 's,database	bdb,database	ldbm,' \
		${WRKSRC}/servers/slapd/slapd.conf

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
#Remove the client part
	@cd ${PREFIX} && rm -fR bin include lib man/man5/ldap.conf.5 \
		man/man5/ldif.5 share/examples/openldap/ldap.conf \
		man/man3/ld_errno.3
	@find ${PREFIX}/man/man1 -name 'ldap*' -exec rm -f {} \;
	@find ${PREFIX}/man/man3 -name 'ber_*' -exec rm -f {} \;
	@find ${PREFIX}/man/man3 -name 'lber*' -exec rm -f {} \;
	@find ${PREFIX}/man/man3 -name 'ldap*' -exec rm -f {} \;
	@find ${PREFIX}/man/man5 -name 'slapo*' -exec rm -f {} \;

.include <bsd.port.mk>
