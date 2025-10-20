COMMENT-main=	WWW and FTP proxy cache and accelerator
COMMENT-ldap=	LDAP authentication/ACL support for Squid

V=		7.2
REVISION=	1
DISTNAME=	squid-$V
EXTRACT_SUFX=	.tar.xz
DPB_PROPERTIES=	parallel

# subpackages aren't flavoured, so overwrite the default name/path
FULLPKGNAME-ldap= squid-ldap-$V
FULLPKGPATH-ldap= ${PKGPATH},-ldap
RUN_DEPENDS-ldap += squid-$Vv${EPOCH}:www/squid

EPOCH=		0
CATEGORIES=	www

# https://github.com/squid-cache/squid
HOMEPAGE=	https://www.squid-cache.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB-main=	${COMPILER_LIBCXX} \
		c crypto execinfo m nettle ssl tdb

SITES=		https://github.com/squid-cache/squid/releases/download/SQUID_${V:S/./_/g}/

# C++17
COMPILER=	base-clang ports-gcc

BUILD_DEPENDS=	devel/cppunit
DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfgaux
USE_GMAKE=	Yes

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

EXTERNAL_ACL=	SQL_session file_userip time_quota \
		unix_group

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		databases/tdb \
		security/libnettle

SYSCONFDIR=	${BASESYSCONFDIR}/squid
LOCALSTATEDIR=	${BASELOCALSTATEDIR}/squid

MULTI_PACKAGES=	-main -ldap
PSEUDO_FLAVORS=	no_ldap
FLAVORS=	krb5
FLAVOR?=

CONFIGURE_ARGS=	--datadir="${PREFIX}/share/squid" \
		--libexecdir="${PREFIX}/libexec/squid" \
		--disable-arch-native \
		--enable-auth \
		--enable-delay-pools \
		--disable-ecap \
		--disable-eui \
		--enable-follow-x-forwarded-for \
		--enable-forw-via-db \
		--enable-http-violations \
		--enable-icap-client \
		--enable-ipv6 \
		--enable-removal-policies="lru heap" \
		--enable-ssl-crtd \
		--enable-stacktraces \
		--enable-storeio="aufs ufs diskd rock" \
		--disable-strict-error-checking \
		--enable-translation \
		--with-openssl \
		--without-gnutls \
		--with-default-user="_squid" \
		--with-filedescriptors=8192 \
		--with-pidfile="/var/run/squid.pid" \
		--with-pthreads \
		--with-swapdir="${LOCALSTATEDIR}/cache"

# ld: error: undefined symbol: lt__PROGRAM__LTX_preloaded_symbols
CONFIGURE_ARGS+= --disable-shared

# PF transparent support requires access to /dev/pf to retrieve the original
# source address; ipfw-transparent (which requires divert-to) uses an
# unprivileged getsockname() call instead.
CONFIGURE_ARGS+= --disable-pf-transparent \
		--enable-ipfw-transparent

# list these specifically; if trying to build all external-acl-helpers,
# kerberos_ldap_group fails
CONFIGURE_ARGS+= --enable-external-acl-helpers="${EXTERNAL_ACL}"

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
		ac_cv_header_et_com_err_h=false \
		ac_cv_header_security_pam_appl_h=false
FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/squid \
		DEFAULT_CONFIG_FILE=${TRUEPREFIX}/share/examples/squid/squid.conf \
		DEFAULT_MIME_TABLE=${TRUEPREFIX}/share/examples/squid/mime.conf
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
CONFIGURE_ARGS+= --without-mit-krb5 \
		 --without-heimdal-krb5
.endif

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ldap}
EXTERNAL_ACL+=	LDAP_group eDirectory_userip
.endif
LIB_DEPENDS-ldap=   databases/openldap
WANTLIB-ldap=	${COMPILER_LIBCXX} c crypto execinfo lber ldap \
		m nettle sasl2 ssl

post-install:
	rmdir ${WRKINST}/var/squid{/run/squid,/run,/logs,/cache,}
	cd ${PREFIX}/share/examples/squid; \
	    rm -f mime.conf squid.conf cachemgr.conf errorpage.css msntauth.conf
	# remove unwanted auth helpers
.for i in basic_getpwnam_auth basic_sasl_auth
	cd ${PREFIX}; rm libexec/squid/$i man/man8/$i.8
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmp/mibs
	cd ${PREFIX}/share; mv squid/mib.txt snmp/mibs/SQUID-MIB.txt

.include <bsd.port.mk>
