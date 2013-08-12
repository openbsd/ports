# $OpenBSD: Makefile,v 1.5 2013/08/12 04:11:22 robert Exp $

COMMENT=	memcached server admin in PHP

V=		1.2.1
DISTNAME=	phpMemcachedAdmin-$V-r233
PKGNAME=	phpmemcachedadmin-$V
REVISION=	1

CATEGORIES=	www databases

HOMEPAGE=	https://phpmemcacheadmin.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=		lang/php
RUN_DEPENDS=		www/pecl-memcache

NO_BUILD=		Yes
NO_TEST=		Yes

PKG_ARCH=		*
WRKDIST=		${WRKDIR}
PREFIX=		${VARBASE}/www

post-extract:
	cd ${WRKSRC} && mkdir phpMemcachedAdmin && \
	    mv [A-Z]* *php phpMemcachedAdmin

do-install:
	cd ${WRKSRC} && pax -rw phpMemcachedAdmin ${PREFIX}/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/phpMemcachedAdmin
	mv ${PREFIX}/phpMemcachedAdmin/Config/Memcache.php \
	    ${PREFIX}/phpMemcachedAdmin/Config/Memcache.php.dist

.include <bsd.port.mk>
