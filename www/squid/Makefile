# $OpenBSD: Makefile,v 1.70 2005/02/11 02:47:55 brad Exp $

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.5.STABLE7
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}Versions/v2/2.5/
MASTER_SITES0=	${HOMEPAGE}Versions/v2/2.5/bugs/
DIST_SUBDIR=	squid

PATCH_DIST_STRIP= -p1
PATCHFILES=	${DISTNAME}-half_closed_POST.patch:0 \
		${DISTNAME}_req_resp_header.patch:0 \
		${DISTNAME}-helper_shutdown.patch:0 \
		${DISTNAME}-non_blocking_disk.patch:0 \
		${DISTNAME}-blank_response.patch:0 \
		${DISTNAME}-dothost.patch:0 \
		${DISTNAME}-PURGE_internal.patch:0 \
		${DISTNAME}-httpd_accel_vport.patch:0 \
		${DISTNAME}-cachemgr_vmobjects.patch:0 \
		${DISTNAME}-empty_acls.patch:0 \
		${DISTNAME}-close_other.patch:0 \
		${DISTNAME}-fakeauth_auth.patch:0 \
		${DISTNAME}-gopher_html_parsing.patch:0 \
		${DISTNAME}-wccp_denial_of_service.patch:0 \
		${DISTNAME}-dns_memleak.patch:0 \
		${DISTNAME}-fqdn_truncated.patch:0 \
		${DISTNAME}-ldap_spaces.patch:0 \
		${DISTNAME}-header_parsing.patch:0 \
		${DISTNAME}-httpd_accel_no_pmtu_disc.patch:0 \
		${DISTNAME}-ftp_datachannel.patch:0 \
		${DISTNAME}-short_icons_urls.patch:0 \
		${DISTNAME}-response_splitting.patch:0 \
		${DISTNAME}-wccp_buffer_overflow.patch:0 \
		${DISTNAME}-oversize_reply_headers.patch:0 \
		${DISTNAME}-ldap_search.patch:0

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl

SQUIDDIR?=	/var/squid
SUBST_VARS=	SQUIDDIR

FLAVORS=	transparent snmp
FLAVOR?=

.include <bsd.own.mk>

USE_GCC3?= No

# optimization workaround for gcc 2.95
.if ${USE_GCC3:L} == "no"
PATCH_LIST=     patch-* gcc-*
.endif

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/cfgaux
CONFIGURE_ARGS+=--datadir="${PREFIX}/share/squid" \
		--enable-auth="basic digest" \
		--enable-basic-auth-helpers="NCSA YP" \
		--enable-digest-auth-helpers="password" \
		--enable-external-acl-helpers="ip_user unix_group" \
		--enable-removal-policies="lru heap" \
		--enable-ssl \
		--enable-storeio="ufs diskd" \
		--localstatedir="${SQUIDDIR}"

.if ${FLAVOR:L:Mtransparent}
CONFIGURE_ARGS+=--enable-pf-transparent
.endif

.if${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=--enable-snmp
.endif

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/squid
	@find ${PREFIX}/share/examples/squid/errors \
		-name '*.orig' -print0 | xargs -0 rm -f

.include <bsd.port.mk>
