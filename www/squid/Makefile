# $OpenBSD: Makefile,v 1.57 2004/02/16 10:21:20 brad Exp $

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.5.STABLE4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.5/
MASTER_SITES0=	http://www.squid-cache.org/Versions/v2/2.5/bugs/
DIST_SUBDIR=	squid

PATCH_DIST_STRIP= -p1
PATCHFILES=	squid-2.5.STABLE4-reconfigure_message.patch:0 \
		squid-2.5.STABLE4-digest_auth_pwchange.patch:0 \
		squid-2.5.STABLE4-redirect_login_space.patch:0 \
		squid-2.5.STABLE4-fqdnnegcache.patch:0 \
		squid-2.5.STABLE4_auth_param_doc.patch:0 \
		squid-2.5.STABLE4-errorpages.patch:0 \
		squid-2.5.STABLE4-error_load_text.patch:0 \
		squid-2.5.STABLE4-xpi_mime.patch:0 \
		squid-2.5.STABLE4-size_overflow.patch:0 \
		squid-2.5.STABLE4-extacl_auth_loop.patch:0 \
		squid-2.5.STABLE4-positive_dns_ttl.patch:0 \
		squid-2.5.STABLE4-gopherhtml.patch:0 \
		squid-2.5.STABLE4-synflood.patch:0 \
		squid-2.5.STABLE4-fqdn.patch:0 \
		squid-2.5.STABLE4-connect_cleanup.patch:0 \
		squid-2.5.STABLE4-pconn_post.patch:0 \
		squid-2.5.STABLE4-ftp_put.patch:0 \
		squid-2.5.STABLE4-pconn-load.patch:0 \
		squid-2.5.STABLE4-icon_urls.patch:0 \
		squid-2.5.STABLE4-redirector_access.patch:0 \
		squid-2.5.STABLE4-pconn-lifo.patch:0 \
		squid-2.5.STABLE4-cache_peer_maxconn.patch:0 \
		squid-2.5.STABLE4-pid_filename_none.patch:0 \
		squid-2.5.STABLE4-dns_namelength.patch:0 \
		squid-2.5.STABLE4-urllogin_acl.patch:0 \
		squid-2.5.STABLE4-russian.patch:0 \
		squid-2.5.STABLE4-redirlog.patch:0 \
		squid-2.5.STABLE4-partial_reload.patch:0 \
		squid-2.5.STABLE4-http_workarounds.patch:0 \
		squid-2.5.STABLE4-empty_proxy_auth.patch:0 \
		squid-2.5.STABLE4-ftp_telnet.patch:0 \
		squid-2.5.STABLE4-ipcache_purge.patch:0

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

# Gcc 3
MODULES+=	gcc3
MODGCC3_ARCHES=	sparc64

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
