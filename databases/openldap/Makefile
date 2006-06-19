# $OpenBSD: Makefile,v 1.66 2006/06/19 08:22:35 bernd Exp $

COMMENT=	"Open source LDAP software (client)"
COMMENT-server=	"Open source LDAP software (server)"

DISTNAME=	openldap-2.3.24
FULLPKGNAME=	${DISTNAME:S/-/-client-/}
PKGNAME-server=	${DISTNAME:S/-/-server-/}
SHARED_LIBS=	lber-2.3	9.0 \
		lber		9.0 \
		ldap-2.3	9.0 \
		ldap		9.0 \
		ldap_r-2.3	9.0 \
		ldap_r		9.0
CATEGORIES=	databases net

HOMEPAGE=	http://www.openldap.org/

MAINTAINER=     Marc Balmer <mbalmer@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/ \
		ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/ \
		ftp://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://gd.tuwien.ac.at/infosys/network/OpenLDAP/openldap-release/ \
		http://www.unibase.cz/ldapcz/Programy/Free/OpenLDAP/openldap-release/ \
		ftp://ftp.ntua.gr/mirror/OpenLDAP/openldap-release/

EXTRACT_SUFX=		.tgz

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	\
			${CONFIGURE_SHARED} \
			--localstatedir="/var" \
			--enable-ipv6

# slapd options
CONFIGURE_ARGS+=	\
			--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--enable-rewrite \
			--enable-wrappers \
			--with-cyrus-sasl \
			--enable-spasswd

# slapd modules
CONFIGURE_ARGS+=	\
			--enable-dnssrv \
			--enable-ldap \
			--enable-ldbm \
			--enable-meta \
			--enable-monitor \
			--enable-null \
			--enable-passwd \
			--enable-perl \
			--enable-shell

# slurpd modules
CONFIGURE_ARGS+=	\
			--enable-slurpd

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/build

REGRESS_TARGET=	test

FLAVORS=	bdb
FLAVOR?=

MULTI_PACKAGES=	-server
SUBPACKAGE?=

LIB_DEPENDS+=		sasl2::security/cyrus-sasl2
CPPFLAGS+=		-I${LOCALBASE}/include/sasl

.if ${FLAVOR:L:Mbdb}
CONFIGURE_ARGS+=	--enable-bdb --enable-hdb
LIB_DEPENDS+=		lib/db4/db.=4:db-4.*:databases/db/v4
CPPFLAGS+=		-I${LOCALBASE}/include/db4
LDFLAGS+=		-L${LOCALBASE}/lib/db4
LIBS+=			-ldb
.else
CONFIGURE_ARGS+=	--disable-bdb --disable-hdb
.endif

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
			LIBS="${LIBS}"

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=	openldap:${FULLPKGNAME}:databases/openldap
WANTLIB+=	perl util wrap m pthread
.endif

USE_LIBTOOL=	Yes

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

pre-configure:
.if ${FLAVOR:L:Msasl}
	perl -pi -e 's,KRB5_LIBS=,KRB5_LIBS="-lgssapi -lkrb5 -lasn1 -lcom_err",g' \
		${WRKSRC}/configure
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/*.conf \
		${PREFIX}/share/examples/openldap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/schema/*.schema \
		 ${PREFIX}/share/examples/openldap/schema

.include <bsd.port.mk>
