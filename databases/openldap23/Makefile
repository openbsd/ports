# $OpenBSD: Makefile,v 1.14 2014/03/24 12:53:37 naddy Exp $

COMMENT=	Open source LDAP software (server)

DISTNAME=	openldap-2.3.43
PKGNAME=	${DISTNAME:S/-/-server-/}
REVISION=	14

CATEGORIES=	databases net

HOMEPAGE=	http://www.openldap.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c com_err crypto gssapi heimbase
WANTLIB += krb5 m perl pthread roken sasl2 ssl util wind

MASTER_SITES=	http://mirror.switch.ch/ftp/mirror/OpenLDAP/openldap-release/ \
		http://gd.tuwien.ac.at/infosys/network/OpenLDAP/openldap-release/ \
		http://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/ \
		http://ftp.ntua.gr/mirror/OpenLDAP/openldap-release/

EXTRACT_SUFX=		.tgz

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
USE_GROFF=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-ipv6

# slapd options
CONFIGURE_ARGS+=	--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--enable-rewrite \
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

TEST_TARGET=	test

LIB_DEPENDS+=		security/cyrus-sasl2
CPPFLAGS+=		-I${LOCALBASE}/include/sasl

CONFIGURE_ARGS+=	--disable-bdb --disable-hdb

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
			LIBS="${LIBS}"


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
