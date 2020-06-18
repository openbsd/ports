# $OpenBSD: Makefile,v 1.174 2020/06/18 19:25:54 sthen Exp $

DPB_PROPERTIES =	parallel

COMMENT-main =		open-source LDAP software (client)
COMMENT-server =	open-source LDAP software (server)

DISTNAME =		openldap-2.4.50
PKGNAME-main =		${DISTNAME:S/-/-client-/}
PKGNAME-server =	${DISTNAME:S/-/-server-/}
REVISION-server =	1

# overwrite -main pkgname/path to strip FLAVOR, aci only affects the server
FULLPKGNAME-main =	${DISTNAME:S/-/-client-/}${FLAVOR_EXT:S/-aci//}
FULLPKGPATH-main =	databases/openldap,-main${FLAVOR_EXT:S/-aci//:S/-/,/g}

SHARED_LIBS +=	lber                 12.0     # 12.6
SHARED_LIBS +=	lber-2.4             12.0

SHARED_LIBS +=	ldap                 13.1     # 12.6
SHARED_LIBS +=	ldap-2.4             13.1
SHARED_LIBS +=	ldap_r               13.1
SHARED_LIBS +=	ldap_r-2.4           13.1

CATEGORIES =	databases net

HOMEPAGE =	https://www.openldap.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# OpenLDAP Public License
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto ssl

MASTER_SITES =	https://openldap.org/software/download/OpenLDAP/openldap-release/ \
		https://mirror.eu.oneandone.net/software/openldap/ \
		https://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/

COMPILER =		base-clang ports-gcc base-gcc

EXTRACT_SUFX =		.tgz

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
DEBUG_PACKAGES =	${BUILD_PACKAGES}

FLAVOR ?=
FLAVORS =		aci gssapi

CONFIGURE_ARGS +=	--enable-ipv6 \
			--with-tls=openssl

# slapd options
CONFIGURE_ARGS +=	--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--enable-rewrite \
			--with-cyrus-sasl \
			--enable-spasswd

# slapd modules
CONFIGURE_ARGS +=	--enable-bdb \
			--enable-dnssrv \
			--enable-hdb \
			--enable-ldap \
			--enable-meta \
			--enable-monitor \
			--enable-null \
			--enable-overlays \
			--enable-passwd \
			--enable-perl \
			--enable-shell

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
WANTLIB +=		pthread sasl2
CPPFLAGS +=		-I${LOCALBASE}/include/sasl

LIB_DEPENDS-server =	${LIB_DEPENDS-main} \
			sysutils/e2fsprogs \
			databases/db/v4,no_java,no_tcl

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/sasl -I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4 -L${LOCALBASE}/lib"

RUN_DEPENDS-server =	databases/openldap,-main
WANTLIB-server +=	${WANTLIB} lib/db4/db>=4 m perl uuid

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openldap

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

post-install:
	rm ${PREFIX}/share/examples/openldap/{slapd.conf,slapd.ldif,ldap.conf}.default
.for i in lber ldap ldap_r
	ln -s lib$i.so.${LIB$i_VERSION} ${PREFIX}/lib/lib$i-2.4.so.${LIB$i_VERSION}
.endfor

pre-test:
	sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/tests/scripts/test064-constraint

.include <bsd.port.mk>
