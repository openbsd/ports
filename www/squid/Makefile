# $OpenBSD: Makefile,v 1.7 1999/12/09 19:48:17 brad Exp $

DISTNAME=	squid-2.2.STABLE5
PKGNAME=	squid-2.2
CATEGORIES=	www
MASTER_SITES=	http://squid.nlanr.net/Versions/v2/2.2/
EXTRACT_SUFX=	-src.tar.gz

PATCH_SITES=	http://squid.nlanr.net/Versions/v2/2.2/bugs/
PATCHFILES=	squid-2.2.stable5-no_cache.patch \
		squid-2.2.stable5-ipcache_negative.patch \
		squid-2.2.stable5-newlines_in_auth.patch
.if defined(PATCH_DEBUG)
PATCH_DIST_ARGS=-d ${WRKSRC}/src -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKSRC}/src --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

MAINTAINER=	ports@openbsd.org

SYSCONFDIR=	/etc/squid
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR} --localstatedir="/var/squid"

MAKEFILE=	makefile
STRIP=		# won't install scripts correctly otherwise.

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
