# $OpenBSD: Makefile,v 1.54 2003/08/18 17:13:40 brad Exp $

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.5.STABLE3
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.5/
MASTER_SITES0=	http://www.squid-cache.org/Versions/v2/2.5/bugs/
DIST_SUBDIR=	squid

PATCH_DIST_STRIP= -p1
PATCHFILES=	squid-2.5.STABLE3-deny_info.patch:0 \
		squid-2.5.STABLE3-header_access_peer.patch:0 \
		squid-2.5.STABLE3-memwarnsbrk.patch:0 \
		squid-2.5.STABLE3-hostscomments.patch:0 \
		squid-2.5.STABLE3-tcp_reset_leak.patch:0 \
		squid-2.5.STABLE3-hostheader.patch:0 \
		squid-2.5.STABLE3-reply_body_max_size.patch:0 \
		squid-2.5.STABLE3-ie_refresh.patch:0 \
		squid-2.5.STABLE3-http_reply_access-denied.patch:0 \
		squid-2.5.STABLE3-SENT_PASV.patch:0 \
		squid-2.5.STABLE3-peer_digest_not_found_assertion.patch:0 \
		squid-2.5.STABLE3-round_robin_max_size.patch:0 \
		squid-2.5.STABLE3-syscalls.disk-counters.patch:0 \
		squid-2.5.STABLE3-blank-username-log.patch:0 \
		squid-2.5.STABLE3-mem_cfd.patch:0 \
		squid-2.5.STABLE3-aufs_open_fail.patch:0 \
		squid-2.5.STABLE3-aufs_threads.patch:0 \
		squid-2.5.STABLE3-digest_compile.patch:0 \
		squid-2.5.STABLE3-407_user_name.patch:0 \
		squid-2.5.STABLE3-multicast-ICP-timeout.patch:0

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
MODULES=	gcc3                                                                                                  
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

.include <bsd.port.mk>
