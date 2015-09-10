# $OpenBSD: Makefile,v 1.169 2015/09/10 13:00:10 sthen Exp $

COMMENT-main=	WWW and FTP proxy cache and accelerator
COMMENT-ldap=	LDAP authentication/ACL support for Squid
COMMENT-ntlm=	NTLM authentication/ACL support for Squid

V=		3.5.8
REVISION=	0
DISTNAME=	squid-$V
EXTRACT_SUFX=	.tar.xz
PKGNAME-main=	squid-$V
PKGNAME-ldap=	squid-ldap-$V
PKGNAME-ntlm=	squid-ntlm-$V

CATEGORIES=	www

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gmp gnutls hogweed m p11-kit nettle tasn1 pthread z

# bzr repository at https://code.launchpad.net/squid
MASTER_SITES=	${HOMEPAGE}Versions/v${V:C/^([0-9]).*/\1/}/${V:C/([0-9.]{3}).*/\1/}/ \
		http://ftp.mirrorservice.org/sites/ftp.squid-cache.org/pub/archive/${V:C/([0-9.]{3}).*/\1/}/

MODULES+=	devel/gettext gcc4
LIB_DEPENDS+=	security/gnutls
BUILD_DEPENDS+=	devel/cppunit
USE_GROFF=	Yes

MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c c++

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfgaux

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native \
		--enable-ssl-crtd

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

WANTLIB-main +=	${WANTLIB} crypto db ssl

LIB_DEPENDS-main += ${LIB_DEPENDS} \
		databases/db/v4 \
		security/libnettle

SYSCONFDIR=	${BASESYSCONFDIR}/squid
LOCALSTATEDIR=	${BASELOCALSTATEDIR}/squid

MULTI_PACKAGES=	-main -ldap -ntlm
PSEUDO_FLAVORS=	no_ldap no_ntlm
FLAVOR?=

.include <bsd.port.arch.mk>

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--datadir="${PREFIX}/share/squid" \
		--libexecdir="${PREFIX}/libexec/squid" \
		--disable-loadable-modules \
		--enable-arp-acl \
		--enable-auth \
		--enable-delay-pools \
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
		--with-krb5-config=no \
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

.if ${BUILD_PACKAGES:M-ldap}
EXTERNAL_ACL+=	LDAP_group eDirectory_userip
.endif
RUN_DEPENDS-ldap=   ${BASE_PKGPATH}
LIB_DEPENDS-ldap+=  ${LIB_DEPENDS} databases/openldap
WANTLIB-ldap +=     ${WANTLIB} crypto lber-2.4 ldap-2.4 sasl2 ssl

RUN_DEPENDS-ntlm=   net/samba ${BASE_PKGPATH}
LIB_DEPENDS-ntlm += security/libnettle
WANTLIB-ntlm +=	    ${WANTLIB}

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
