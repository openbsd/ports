# $OpenBSD: Makefile,v 1.12 2000/02/22 17:08:48 espie Exp $

DISTNAME=	squid-2.2.STABLE5
PKGNAME=	squid-2.2
CATEGORIES=	www
MASTER_SITES=	http://squid.nlanr.net/Versions/v2/2.2/
MASTER_SITES0=	http://squid.nlanr.net/Versions/v2/2.2/bugs/
EXTRACT_SUFX=	-src.tar.gz

NEED_VERSION=	1.210
PATCHFILES=	squid-2.2.stable5-no_cache.patch:0 \
		squid-2.2.stable5-ipcache_negative.patch:0 \
		squid-2.2.stable5-newlines_in_auth.patch:0 \
		squid-2.2.stable5-domain-match.patch:0

.if defined(PATCH_DEBUG) && ${PATCH_DEBUG:U} == YES
PATCH_DIST_ARGS=-d ${WRKSRC}/src -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKSRC}/src --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

SYSCONFDIR=	/etc/squid
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR} --localstatedir="/var/squid"

MAKE_FILE=	makefile
STRIP=		# won't install scripts correctly otherwise.

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
