# $OpenBSD: Makefile,v 1.56 2003/10/17 18:03:54 brad Exp $

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.5.STABLE4
CATEGORIES=	www
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.5/
MASTER_SITES0=	http://www.squid-cache.org/Versions/v2/2.5/bugs/
DIST_SUBDIR=	squid

PATCH_DIST_STRIP= -p1
PATCHFILES=	squid-2.5.STABLE4-reconfigure_message.patch:0 \
		squid-2.5.STABLE4-digest_auth_pwchange.patch:0 \
		squid-2.5.STABLE4-redirect_login_space.patch:0 \
		squid-2.5.STABLE4-fqdnnegcache.patch:0

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

.include <bsd.port.mk>
