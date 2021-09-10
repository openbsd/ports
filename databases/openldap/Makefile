# $OpenBSD: Makefile,v 1.189 2021/09/10 18:20:31 sthen Exp $

DPB_PROPERTIES =	parallel

COMMENT-main =		open-source LDAP software (client)
COMMENT-server =	open-source LDAP software (server)

PORTROACH =		limit:^2\.5\.

DISTNAME =		openldap-2.5.7
PKGNAME-main =		${DISTNAME:S/-/-client-/}
PKGNAME-server =	${DISTNAME:S/-/-server-/}
REVISION-server =	0

# overwrite -main pkgname/path to strip FLAVOR, aci only affects the server
FULLPKGNAME-main =	${DISTNAME:S/-/-client-/}${FLAVOR_EXT:S/-aci//}
FULLPKGPATH-main =	databases/openldap,-main${FLAVOR_EXT:S/-aci//:S/-/,/g}

SHARED_LIBS +=	lber                 14.0
SHARED_LIBS +=	lber-2.5             14.0
SHARED_LIBS +=	ldap                 14.0
SHARED_LIBS +=	ldap-2.5             14.0

CATEGORIES =	databases net

HOMEPAGE =	https://www.openldap.org/

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# OpenLDAP Public License
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto pthread sasl2 ssl

MASTER_SITES =	https://openldap.org/software/download/OpenLDAP/openldap-release/ \
		https://mirror.eu.oneandone.net/software/openldap/ \
		https://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/

COMPILER =		base-clang ports-gcc base-gcc

EXTRACT_SUFX =		.tgz

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
USE_GMAKE =		Yes
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
			--enable-modules \
			--enable-spasswd

# slapd compiled-in
# Enable MDB support, N.B. patch-servers_slapd_back-mdb_init_c.
CONFIGURE_ARGS +=	--enable-mdb

# slapd modules
CONFIGURE_ARGS +=	--enable-dnssrv=mod \
			--enable-ldap=mod \
			--enable-meta=mod \
			--enable-null=mod \
			--enable-passwd=mod \
			--enable-perl=mod

# overlays
CONFIGURE_ARGS +=	--enable-overlays=mod

# Requires OpenSSL 1.1.1+
CONFIGURE_ARGS +=	--disable-autoca

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
			databases/openldap,-main \
			devel/libtool,-ltdl
WANTLIB-server +=	${WANTLIB} lber ldap ltdl m perl

CPPFLAGS =		-I${LOCALBASE}/include/sasl \
			-I${LOCALBASE}/include
CFLAGS +=		-Wno-format-extra-args
CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,--export-dynamic"

# Bypass autoconf check for OpenSSL 1.1.1+ function, other than autoca
# at this point other parts of OpenLDAP 2.5 do seem OK with LibreSSL.
CONFIGURE_ENV +=	ac_cv_lib_ssl_SSL_export_keying_material_early=yes

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openldap

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

post-install:
	rm ${PREFIX}/share/examples/openldap/{slapd.conf,slapd.ldif,ldap.conf}.default
.for i in lber ldap
	ln -s lib$i.so.${LIB$i_VERSION} ${PREFIX}/lib/lib$i-2.5.so.${LIB$i_VERSION}
.endfor

pre-test:
	sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/tests/scripts/test064-constraint

.include <bsd.port.mk>
