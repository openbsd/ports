# $OpenBSD: Makefile,v 1.62 2004/06/02 21:39:59 brad Exp $

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.5.STABLE5
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}Versions/v2/2.5/
MASTER_SITES0=	${HOMEPAGE}Versions/v2/2.5/bugs/
DIST_SUBDIR=	squid

PATCH_DIST_STRIP= -p1
PATCHFILES=	${DISTNAME}-helper_warning.patch:0 \
		${DISTNAME}-vary.patch:0 \
		${DISTNAME}-deny_info.patch:0 \
		${DISTNAME}-CONNECT_timeout.patch:0 \
		${DISTNAME}-cache_swap_log.patch:0 \
		${DISTNAME}-rfc1035NameUnpack.patch:0 \
		${DISTNAME}-digest_blank.patch:0 \
		${DISTNAME}-post_assert.patch:0 \
		${DISTNAME}-spelling.patch:0 \
		${DISTNAME}-digest_ERR.patch:0 \
		${DISTNAME}-turkish_ERR_DNS_FAIL.patch:0 \
		${DISTNAME}-vary_negatively.patch:0 \
		${DISTNAME}-range_offset_limit.patch:0 \
		${DISTNAME}-large_cache_mem.patch:0 \
		${DISTNAME}-least-load.patch:0 \
		${DISTNAME}-cacheCurrentUnlinkRequests.patch:0 \
		${DISTNAME}-debug_client_ip.patch:0 \
		${DISTNAME}-openbsd_m88k.patch:0 \
		${DISTNAME}-ftp_html_doctype.patch:0 \
		${DISTNAME}-dns_localhost.patch:0 \
		${DISTNAME}-va_copy.patch:0

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SQUIDDIR?=	/var/squid
SUBST_VARS=	SQUIDDIR

FLAVORS=	transparent
FLAVOR?=

.include <bsd.own.mk>

USE_GCC3?= No

# optimization workaround for gcc 2.95
.if ${USE_GCC3:L} == "no"
PATCH_LIST=     patch-* gcc-*
.endif

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/cfgaux
CONFIGURE_ARGS=	--enable-removal-policies="lru heap" \
		--enable-storeio="ufs diskd" \
		--enable-ssl \
		--datadir="${PREFIX}/share/squid" \
		--localstatedir="${SQUIDDIR}"

.if ${FLAVOR:L:Mtransparent}
CONFIGURE_ARGS+= --enable-pf-transparent
.endif

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/squid
	@find ${PREFIX}/share/examples/squid/errors \
		-name '*.orig' -print0 | xargs -0 rm -f

.include <bsd.port.mk>
