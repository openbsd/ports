# $OpenBSD: Makefile,v 1.76 2005/11/03 18:28:56 naddy Exp $

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.5.STABLE12
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}Versions/v2/2.5/
DIST_SUBDIR=	squid

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
AUTOCONF_VERSION=2.13
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
