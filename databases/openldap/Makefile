# $OpenBSD: Makefile,v 1.55 2005/10/08 09:12:38 jakob Exp $

COMMENT=	"Open source LDAP software (client)"
COMMENT-server=	"Open source LDAP software (server)"

VERSION=	2.2.29
DISTNAME=	openldap-${VERSION}
FULLPKGNAME=	openldap-client-${VERSION}
PKGNAME-server=	openldap-server-${VERSION}
CATEGORIES=	databases net

HOMEPAGE=	http://www.openldap.org/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/ \
		ftp://ftp.net.lut.ac.uk/openldap/openldap-release/ \
		ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/ \
		ftp://mirror.aarnet.edu.au/pub/OpenLDAP/openldap-release/ \
		ftp://gd.tuwien.ac.at/infosys/network/OpenLDAP/openldap-release/ \
		http://www.unibase.cz/ldapcz/Programy/Free/OpenLDAP/openldap-release/ \
		ftp://ftp.ntua.gr/mirror/OpenLDAP/openldap-release/ \
		ftp://ftp.shellhung.org/pub/OpenLDAP/openldap-release/

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
			--enable-wrappers

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

FLAVORS=	sasl bdb
FLAVOR?=

MULTI_PACKAGES=	-server
SUBPACKAGE?=

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+=	--with-cyrus-sasl \
			--enable-spasswd
LIB_DEPENDS+=		sasl2::security/cyrus-sasl2
CPPFLAGS+=		-I${LOCALBASE}/include/sasl
.else
CONFIGURE_ARGS+=	--without-cyrus-sasl \
			--disable-spasswd
.endif

.if ${FLAVOR:L:Mbdb}
CONFIGURE_ARGS+=	--enable-bdb
LIB_DEPENDS+=		lib/db4/db.=4:db-4.*:databases/db/v4
CPPFLAGS+=		-I${LOCALBASE}/include/db4
LDFLAGS+=		-L${LOCALBASE}/lib/db4
LIBS+=			-ldb
.else
CONFIGURE_ARGS+=	--disable-bdb
.endif

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			LIBS="${LIBS}"

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=	openldap:openldap-client-${VERSION}:databases/openldap
WANTLIB+=	perl util wrap m pthread
.endif

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

post-patch:
.if ${FLAVOR:L:Msasl}
	perl -pi -e 's,KRB5_LIBS=,KRB5_LIBS="-lgssapi -lkrb5 -lasn1 -lcom_err",g' ${WRKSRC}/configure
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/*.conf \
		${PREFIX}/share/examples/openldap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/schema/*.schema \
		 ${PREFIX}/share/examples/openldap/schema

.include <bsd.port.mk>
