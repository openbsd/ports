# $OpenBSD: Makefile,v 1.30 2002/09/13 23:06:06 jakob Exp $

COMMENT=	"Open source LDAP software (client)"
COMMENT-server=	"Open source LDAP software (server)"

VERSION=	2.0.25
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
			--enable-ipv6 \
			--with-kerberos \
			--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--enable-phonetic \
			--enable-wrappers \
			--enable-dnssrv \
			--enable-ldap \
			--enable-shell \
			--enable-passwd \
			--enable-slurpd

# disable IPv6 until implemented correctly
CONFIGURE_ARGS+=	--disable-ipv6

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/build

# XXX workaround sparc64 gcc optimization bug
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

FLAVORS=	sasl pgsql
FLAVOR?=

MULTI_PACKAGES=	-server
SUBPACKAGE?=

.if ${FLAVOR:L} == "sasl"
CONFIGURE_ARGS+=	--with-cyrus-sasl \
			--enable-spasswd
LIB_DEPENDS+=		sasl::security/cyrus-sasl
CPPFLAGS+=		-I${LOCALBASE}/include/sasl
LIBS+=			-lkrb
.else
CONFIGURE_ARGS+=	--without-cyrus-sasl \
			--disable-spasswd
.endif

.if ${FLAVOR:L} == "pgsql"
CONFIGURE_ARGS+=	--enable-sql
BUILD_DEPENDS+=   	:postgresql-*-odbc:databases/postgresql,odbc
CPPFLAGS+=		-I${LOCALBASE}/include
.endif

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="${LIBS}"

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=	openldap:openldap-client-${VERSION}:databases/openldap
.endif

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap
	${INSTALL_DATA} ${DESTDIR}/etc/openldap/*.conf \
		${PREFIX}/share/examples/openldap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${DESTDIR}/etc/openldap/schema/*.schema \
		 ${PREFIX}/share/examples/openldap/schema

.include <bsd.port.mk>

