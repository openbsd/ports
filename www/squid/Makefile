# $OpenBSD: Makefile,v 1.17 2000/06/10 06:27:25 brad Exp $

DISTNAME=	squid-2.2.STABLE5
PKGNAME=	squid-2.2
CATEGORIES=	www
NEED_VERSION=	1.295
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.2/
MASTER_SITES0=	http://www.squid-cache.org/Versions/v2/2.2/bugs/
EXTRACT_SUFX=	-src.tar.gz
DIST_SUBDIR=	squid

PATCHFILES=	squid-2.2.stable5-no_cache.patch:0 \
		squid-2.2.stable5-ipcache_negative.patch:0 \
		squid-2.2.stable5-newlines_in_auth.patch:0 \
		squid-2.2.stable5-domain-match.patch:0
.if defined(PATCH_DEBUG) && ${PATCH_DEBUG:U} == YES
PATCH_DIST_ARGS=-d ${WRKSRC}/src -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKSRC}/src --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/squid
STATEDIR=	/var/squid
SUBST_VARS=SYSCONFDIR STATEDIR

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}'
CONFIGURE_ARGS+=--sysconfdir='$${DESTDIR}${SYSCONFDIR}'
CONFIGURE_ARGS+=	--localstatedir="${STATEDIR}"

MAKE_FILE=	makefile

.include <bsd.port.mk>
