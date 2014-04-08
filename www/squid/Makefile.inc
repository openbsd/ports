# $OpenBSD: Makefile.inc,v 1.2 2014/04/08 12:22:48 sthen Exp $

MULTI_PACKAGES=	-main -ntlm

COMMENT-main=	WWW and FTP proxy cache and accelerator
COMMENT-ldap=	LDAP authentication/ACL support for Squid
COMMENT-ntlm=	NTLM authentication/ACL support for Squid

DISTNAME?=	squid-$V
EXTRACT_SUFX?=	.tar.xz
PKGNAME-main=	squid-$V
PKGNAME-ldap=	squid-ldap-$V
PKGNAME-ntlm=	squid-ntlm-$V
CATEGORIES=	www

# bzr repository at https://code.launchpad.net/squid
MASTER_SITES=	${HOMEPAGE}Versions/v${V:C/^([0-9]).*/\1/}/${V:C/([0-9.]{3}).*/\1/}/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.squid-cache.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread stdc++

WANTLIB-main +=	${WANTLIB} asn1 com_err crypto db execinfo gssapi
WANTLIB-main +=	heimbase krb5 roken ssl wind

LIB_DEPENDS-main += ${LIB_DEPENDS} \
		databases/db/v4 \
		devel/libexecinfo

SYSCONFDIR=	${BASESYSCONFDIR}/squid
LOCALSTATEDIR=	${BASELOCALSTATEDIR}/squid
SUBST_VARS=	LOCALSTATEDIR

PSEUDO_FLAVORS=	no_ldap
FLAVOR?=

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION?= 2.68
AUTOMAKE_VERSION?= 1.11
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
CONFIGURE_STYLE?= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfgaux

USE_GROFF=	Yes

# gcc 4.2: src/ipc/StoreMap.cc fails with "unrecognizable insn" unless
# optimizer is disabled, see e.g.
# http://www.squid-cache.org/mail-archive/squid-users/201208/0060.html
MODULES+=	gcc4
MODGCC4_ARCHS=	powerpc
MODGCC4_LANGS=	c c++

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
		--with-openssl \
		--enable-stacktraces \
		--enable-storeio="aufs ufs diskd rock" \
		--with-default-user="_squid" \
		--with-filedescriptors=8192 \
		--with-pidfile="/var/run/squid.pid" \
		--with-pthreads \
		--with-swapdir="${LOCALSTATEDIR}/cache"
# PF transparent support requires access to /dev/pf to retrieve the original
# source address; ipfw-transparent (which requires divert-to) uses an
# unprivileged getsockname() call instead.
CONFIGURE_ARGS+= --disable-pf-transparent \
		--enable-ipfw-transparent
# not just defaulting to build all external-acl-helpers as
# kerberos_ldap_group fails
CONFIGURE_ARGS+= --enable-external-acl-helpers="${EXTERNAL_ACL}"

CONFIGURE_ENV+=	CPPFLAGS="`krb5-config --cflags` -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_header_et_com_err_h=false
E=		${TRUEPREFIX}/share/examples/squid
FAKE_FLAGS=	sysconfdir=$E \
		DEFAULT_CONFIG_FILE=$E/squid.conf \
		DEFAULT_MIME_TABLE=$E/mime.conf
TEST_DEPENDS= devel/cppunit

.if !${FLAVOR:Mno_ldap}
MULTI_PACKAGES+= -ldap
EXTERNAL_ACL+=	LDAP_group eDirectory_userip
RUN_DEPENDS-ldap= ${BASE_PKGPATH}
LIB_DEPENDS-ldap += ${LIB_DEPENDS} databases/openldap
WANTLIB-ldap +=	${WANTLIB} asn1 com_err crypto gssapi krb5
WANTLIB-ldap +=	lber-2.4 ldap-2.4 sasl2 ssl wind
WANTLIB-ldap +=	com_err heimbase roken
.endif

RUN_DEPENDS-ntlm= net/samba,ads ${BASE_PKGPATH}
WANTLIB-ntlm +=	${WANTLIB}

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} LOCALBASE=${LOCALBASE} ./bootstrap.sh

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

