# $OpenBSD: Makefile,v 1.229 2020/08/24 13:39:00 sthen Exp $

COMMENT-main=	WWW and FTP proxy cache and accelerator
COMMENT-ldap=	LDAP authentication/ACL support for Squid
COMMENT-ntlm=	NTLM authentication/ACL support for Squid

V=		4.13
DISTNAME=	squid-$V
EXTRACT_SUFX=	.tar.xz
PKGNAME-main=	squid-$V
PKGNAME-ldap=	squid-ldap-$V
PKGNAME-ntlm=	squid-ntlm-$V
REVISION-main=	0

.for i in -ldap -ntlm
# subpackages aren't flavoured, so overwrite the default name/path
FULLPKGNAME$i ?= squid$i-$V
FULLPKGPATH$i ?= ${PKGPATH},$i
RUN_DEPENDS$i += squid-$V:www/squid
.endfor

CATEGORIES=	www

HOMEPAGE=	http://www.squid-cache.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

cWANTLIB=	${COMPILER_LIBCXX} c ffi gmp gnutls hogweed iconv idn2
cWANTLIB+=	intl m nettle p11-kit pthread tasn1 unistring

# repo at https://github.com/squid-cache/squid
MASTER_SITES=	${HOMEPAGE}Versions/v${V:R}/ \
		https://ftp.mirrorservice.org/sites/ftp.squid-cache.org/pub/archive/${V:R}/

# C++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS+=	devel/cppunit

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfgaux

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native \
		--enable-ssl-crtd

EXTERNAL_ACL=	SQL_session file_userip time_quota \
		unix_group wbinfo_group

WANTLIB-main +=	${cWANTLIB} crypto db expat lzma ssl xml2 z

LIB_DEPENDS-main += \
		databases/db/v4 \
		devel/gettext,-runtime \
		security/gnutls \
		security/libnettle \
		textproc/libxml

SYSCONFDIR=	${BASESYSCONFDIR}/squid
LOCALSTATEDIR=	${BASELOCALSTATEDIR}/squid

MULTI_PACKAGES=	-main -ldap -ntlm
PSEUDO_FLAVORS=	no_ldap no_ntlm
FLAVORS=	krb5
FLAVOR?=

CONFIGURE_ARGS+= --datadir="${PREFIX}/share/squid" \
		--libexecdir="${PREFIX}/libexec/squid" \
		--disable-loadable-modules \
		--enable-arp-acl \
		--enable-auth \
		--enable-delay-pools \
		--enable-digest \
		--enable-follow-x-forwarded-for \
		--enable-forw-via-db \
		--enable-http-violations \
		--enable-icap-client \
		--enable-ipv6 \
		--enable-referer-log \
		--enable-removal-policies="lru heap" \
		--enable-ssl \
		--enable-ssl-crtd \
		--with-openssl \
		--enable-storeio="aufs ufs diskd" \
		--with-default-user="_squid" \
		--with-filedescriptors=8192 \
		--with-pidfile="/var/run/squid.pid" \
		--with-pthreads \
		--with-swapdir="${LOCALSTATEDIR}/cache"

# "rock" not in --enable-storeio list due to an error at startup:
# FATAL: Rock cache_dir at /var/squid/rock/rock failed to open db file: (40) Message too long"

# PF transparent support requires access to /dev/pf to retrieve the original
# source address; ipfw-transparent (which requires divert-to) uses an
# unprivileged getsockname() call instead.
CONFIGURE_ARGS+= --disable-pf-transparent \
		--enable-ipfw-transparent
# not just defaulting to build all external-acl-helpers as
# kerberos_ldap_group fails
CONFIGURE_ARGS+= --enable-external-acl-helpers="${EXTERNAL_ACL}"

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_header_et_com_err_h=false \
		ac_cv_header_security_pam_appl_h=false \
		ac_cv_header_execinfo_h=false
E=		${TRUEPREFIX}/share/examples/squid
FAKE_FLAGS=	sysconfdir=$E \
		DEFAULT_CONFIG_FILE=$E/squid.conf \
		DEFAULT_MIME_TABLE=$E/mime.conf
TEST_DEPENDS=	devel/cppunit

.if ${FLAVOR:Mkrb5}
MODULES=	security/heimdal
EXTERNAL_ACL+=	kerberos_ldap_group
LIB_DEPENDS-main+= ${MODHEIMDAL_LIB_DEPENDS} \
		databases/openldap

WANTLIB-main+=	${MODHEIMDAL_WANTLIB} \
		heimdal/lib/gssapi \
		heimdal/lib/heimntlm \
		heimdal/lib/heimsqlite \
		heimdal/lib/wind \
		crypto lber ldap sasl2 ssl util
CONFIGURE_ARGS+= --with-heimdal-krb5
CONFIGURE_ENV+= LIB_KRB5_LIBS="-L${LOCALBASE}/heimdal/lib -Wl,-rpath ${LOCALBASE}/heimdal/lib -lgssapi -lkrb5"
.else
CONFIGURE_ARGS+= --with-krb5-config=no
.endif

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ldap}
EXTERNAL_ACL+=	LDAP_group eDirectory_userip
.endif
LIB_DEPENDS-ldap=   databases/openldap \
		    security/gnutls
WANTLIB-ldap +=     ${cWANTLIB} crypto lber ldap sasl2 ssl

RUN_DEPENDS-ntlm+=   net/samba
LIB_DEPENDS-ntlm=   security/libnettle
WANTLIB-ntlm=       ${COMPILER_LIBCXX} c m nettle pthread

pre-build:
	@cd ${WRKSRC}; \
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
	    helpers/external_acl/wbinfo_group/ext_wbinfo_group_acl.pl.in \
	    helpers/*/*/config.test \
	    src/squid.8.in

post-install:
	rm -rf ${WRKINST}/var/squid
	cd ${PREFIX}/share/examples/squid; \
	    rm -f mime.conf squid.conf cachemgr.conf errorpage.css msntauth.conf
	@# remove unwanted auth helpers; msnt_multi_domain needs Authen::Smb
	@# (not ported), others are risky (typically accessing master.passwd
	@# which needs root).
.for i in basic_msnt_multi_domain_auth basic_getpwnam_auth basic_pam_auth basic_sasl_auth
	rm -f ${PREFIX}/libexec/squid/$i ${PREFIX}/man/man8/$i.8
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmp/mibs
	-cd ${PREFIX}/share; mv squid/mib.txt snmp/mibs/SQUID-MIB.txt

.include <bsd.port.mk>
