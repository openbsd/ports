# $OpenBSD: Makefile,v 1.7 2013/08/07 15:37:11 naddy Exp $

COMMENT=	WWW and FTP proxy cache and accelerator

DISTNAME=	squid-2.7.STABLE9
REVISION=	24
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}/Versions/v2/2.7/
DIST_SUBDIR=	squid

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.squid-cache.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c com_err crypto krb5 gssapi m pthread ssl roken
WANTLIB += heimbase wind

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/squid
SUBST_VARS=	LOCALSTATEDIR

FLAVORS=	ldap ntlm snmp
FLAVOR?=

AUTH=		basic digest negotiate
BASIC_AUTH=	NCSA YP
DIGEST_AUTH=	password
EXTERNAL_ACL=	ip_user unix_group
STOREIO=	aufs ufs diskd null

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION= 2.62
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/cfgaux

CONFIGURE_ARGS+=--datadir="${PREFIX}/share/squid" \
		--enable-auth="${AUTH}" \
		--enable-arp-acl \
		--enable-basic-auth-helpers="${BASIC_AUTH}" \
		--enable-digest-auth-helpers="${DIGEST_AUTH}" \
		--enable-delay-pools \
		--enable-external-acl-helpers="${EXTERNAL_ACL}" \
		--enable-forw-via-db \
		--enable-negotiate-auth-helpers="squid_kerb_auth" \
		--enable-removal-policies="lru heap" \
		--enable-ssl \
		--enable-storeio="${STOREIO}" \
		--with-pthreads \
		--enable-follow-x-forwarded-for

.if ${FLAVOR:Mldap}
BASIC_AUTH+=	LDAP
DIGEST_AUTH+=	ldap
EXTERNAL_ACL+=	ldap_group
WANTLIB+=	ldap lber
LIB_DEPENDS+=	databases/openldap
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.endif

.if ${FLAVOR:Mntlm}
AUTH+=         ntlm
BASIC_AUTH+=   SMB
EXTERNAL_ACL+= wbinfo_group
RUN_DEPENDS+=  net/samba,ads
CONFIGURE_ARGS+=--enable-ntlm-auth-helpers="fakeauth SMB"
.endif

.if ${FLAVOR:Msnmp}
CONFIGURE_ARGS+=--enable-snmp
.endif

pre-build:
	@${SUBST_CMD} ${WRKSRC}/src/defines.h \
		${WRKSRC}/helpers/external_acl/wbinfo_group/wbinfo_group.pl

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/squid
	@find ${PREFIX}/share/examples/squid/errors \
		-name '*.orig' -print0 | xargs -0 rm -f

.include <bsd.port.mk>
