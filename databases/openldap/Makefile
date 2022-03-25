DPB_PROPERTIES =	parallel

COMMENT-main =		open-source LDAP software (client)
COMMENT-server =	open-source LDAP software (server)

DISTNAME =		openldap-2.4.59
REVISION =		1

PKGNAME-main =		${DISTNAME:S/-/-client-/}
EPOCH =			0

# overwrite -main pkgname/path to strip FLAVOR, aci only affects the server
FULLPKGNAME-main =	${DISTNAME:S/-/-client-/}${FLAVOR_EXT:S/-aci//}
FULLPKGPATH-main =	databases/openldap,-main${FLAVOR_EXT:S/-aci//:S/-/,/g}

SHARED_LIBS +=	lber                 15.0
SHARED_LIBS +=	ldap                 15.0
SHARED_LIBS +=	ldap_r               15.0

CATEGORIES =	databases net

HOMEPAGE =	https://www.openldap.org/

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# OpenLDAP Public License
PERMIT_PACKAGE =	Yes

WANTLIB=	c crypto pthread sasl2 ssl
WANTLIB-server=	${WANTLIB} lber ldap_r lib/db4/db>=4 m perl

MASTER_SITES =	https://openldap.org/software/download/OpenLDAP/openldap-release/ \
		https://mirror.eu.oneandone.net/software/openldap/ \
		https://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/

COMPILER =		base-clang ports-gcc

EXTRACT_SUFX =		.tgz

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.65
CONFIGURE_STYLE =	autoconf
DEBUG_PACKAGES =	${BUILD_PACKAGES}

FLAVOR ?=
FLAVORS =		aci gssapi

CONFIGURE_ARGS +=	--enable-dynamic \
			--enable-ipv6 \
			--with-tls=openssl

# slapd options
CONFIGURE_ARGS +=	--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--with-cyrus-sasl \
			--enable-spasswd

# slapd modules
CONFIGURE_ARGS +=	--enable-bdb \
			--enable-dnssrv \
			--enable-hdb \
			--enable-ldap \
			--enable-meta \
			--enable-null \
			--enable-overlays \
			--enable-passwd \
			--enable-perl

# Enable MDB support, N.B. patch-servers_slapd_back-mdb_init_c.
CONFIGURE_ARGS +=	--enable-mdb

.if ${FLAVOR:Maci}
CONFIGURE_ARGS +=	--enable-aci
.endif

.if ${FLAVOR:Mgssapi}
CONFIGURE_ARGS +=	--enable-gssapi=${LOCALBASE}/heimdal
MODULES += security/heimdal
WANTLIB += heimdal/lib/gssapi
WANTLIB += heimdal/lib/heimntlm
WANTLIB += heimdal/lib/heimsqlite
.endif

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/build

TEST_TARGET =		test
TEST_DEPENDS =		shells/bash

MULTI_PACKAGES =	-main -server

# formatting is ok with mandoc, but soelim is used at build time
BUILD_DEPENDS +=	textproc/groff
LIB_DEPENDS +=		security/cyrus-sasl2
LIB_DEPENDS-server =	${LIB_DEPENDS-main} \
			databases/db/v4,no_java,no_tcl \
			databases/openldap,-main

CPPFLAGS =		-I${LOCALBASE}/include/sasl \
			-I${LOCALBASE}/include/db4 \
			-I${LOCALBASE}/include
CFLAGS +=		-Wno-format-extra-args

CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib/db4 -L${LOCALBASE}/lib"

LDAP_SYSCONF =		${SYSCONFDIR}/openldap
SUBST_VARS +=		LDAP_SYSCONF
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openldap

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

post-install:
	rm ${PREFIX}/share/examples/openldap/{slapd.conf,slapd.ldif,ldap.conf}.default

pre-test:
	sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/tests/scripts/test064-constraint

.include <bsd.port.mk>
