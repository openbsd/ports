# $OpenBSD: Makefile,v 1.99 2009/08/30 21:52:44 jasper Exp $

COMMENT=	WWW and FTP proxy cache and accelerator

DISTNAME=	squid-2.7.STABLE6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}/Versions/v2/2.7/
DIST_SUBDIR=	squid

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	asn1 c com_err crypto krb5 gssapi m pthread ssl

SQUIDDIR?=	/var/squid
SUBST_VARS=	SQUIDDIR

FLAVORS=	ldap snmp
FLAVOR?=

.include <bsd.own.mk>

USE_GCC3?= No

# optimization workaround for gcc 2.95
.if ${USE_GCC3:L} == "no"
PATCH_LIST=     patch-* gcc-*
.endif

BASIC_AUTH=	NCSA YP
DIGEST_AUTH=	password
EXTERNAL_ACL=	ip_user unix_group
STOREIO=	aufs ufs diskd null

SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION= 2.62
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/cfgaux
CONFIGURE_ARGS+=--datadir="${PREFIX}/share/squid" \
		--enable-auth="basic digest" \
		--enable-arp-acl \
		--enable-basic-auth-helpers="${BASIC_AUTH}" \
		--enable-digest-auth-helpers="${DIGEST_AUTH}" \
		--enable-delay-pools \
		--enable-external-acl-helpers="${EXTERNAL_ACL}" \
		--enable-forw-via-db \
		--enable-negotiate-auth-helpers="squid_kerb_auth" \
		--enable-pf-transparent \
		--enable-removal-policies="lru heap" \
		--enable-ssl \
		--enable-storeio="${STOREIO}" \
		--with-pthreads \
		--localstatedir="${SQUIDDIR}" \
		--enable-follow-x-forwarded-for

.if ${FLAVOR:L:Mldap}
BASIC_AUTH+=	LDAP
DIGEST_AUTH+=	ldap
EXTERNAL_ACL+=	ldap_group
LIB_DEPENDS+=	ldap,lber::databases/openldap
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.endif

.if${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=--enable-snmp
.endif

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/squid
	@find ${PREFIX}/share/examples/squid/errors \
		-name '*.orig' -print0 | xargs -0 rm -f

.include <bsd.port.mk>
