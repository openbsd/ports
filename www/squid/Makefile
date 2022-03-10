COMMENT-main=	WWW and FTP proxy cache and accelerator
COMMENT-ldap=	LDAP authentication/ACL support for Squid

V=		5.4.1
DISTNAME=	squid-$V
EXTRACT_SUFX=	.tar.xz
PKGNAME-main=	squid-$V
PKGNAME-ldap=	squid-ldap-$V
DPB_PROPERTIES=	parallel
REVISION=	1

# subpackages aren't flavoured, so overwrite the default name/path
FULLPKGNAME-ldap = squid-ldap-$V
FULLPKGPATH-ldap = ${PKGPATH},ldap
RUN_DEPENDS-ldap += squid-$V:www/squid

CATEGORIES=	www

HOMEPAGE=	http://www.squid-cache.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

# requirement introduced with https://github.com/squid-cache/squid/pull/927
# perhaps this can go away again later
USE_GMAKE=	Yes

cWANTLIB=	${COMPILER_LIBCXX} c execinfo gmp gnutls hogweed iconv
cWANTLIB+=	idn2 intl m nettle p11-kit pthread ssl tasn1 unistring

# repo at https://github.com/squid-cache/squid
MASTER_SITES=	${HOMEPAGE}Versions/v${V:R}/ \
		https://ftp.mirrorservice.org/sites/ftp.squid-cache.org/pub/archive/${V:R:R}/

# C++11
COMPILER=	base-clang ports-gcc

BUILD_DEPENDS+=	devel/cppunit
DEBUG_PACKAGES=	${BUILD_PACKAGES}
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfgaux

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native \
		--enable-ssl-crtd

EXTERNAL_ACL=	SQL_session file_userip time_quota \
		unix_group

WANTLIB-main +=	${cWANTLIB} crypto expat lzma tdb xml2 z

LIB_DEPENDS-main += \
		databases/tdb \
		devel/gettext,-runtime \
		security/gnutls \
		security/libnettle \
		textproc/libxml

SYSCONFDIR=	${BASESYSCONFDIR}/squid
LOCALSTATEDIR=	${BASELOCALSTATEDIR}/squid

MULTI_PACKAGES=	-main -ldap
PSEUDO_FLAVORS=	no_ldap
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
		--enable-stacktraces \
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
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
		ac_cv_header_et_com_err_h=false \
		ac_cv_header_security_pam_appl_h=false
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
	# XXX pkg_add -u can't cope with symlinks changing to real files
	rm -r ${PREFIX}/share/squid/errors/es-mx; ln -s es ${PREFIX}/share/squid/errors/es-mx

.include <bsd.port.mk>
