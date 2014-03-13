# $OpenBSD: Makefile,v 1.15 2014/03/13 17:33:27 sthen Exp $

COMMENT=        Apache FastCGI module

REVISION=	4
DISTNAME=	mod_fastcgi-SNAP-0811090952
# temporary workaround: as the original distname would prevent a seamless
# update use the last offical version and append the date of the snapshot
PKGNAME=	mod_fastcgi-2.4.6.081109

CATEGORIES=     www

HOMEPAGE=       http://www.fastcgi.com/

MASTER_SITES=	${HOMEPAGE}dist/ \
		${HOMEPAGE}dist/old/

MODULES=	apache-module
MODAPACHE_NAME=	fastcgi

# Proprietary license
PERMIT_PACKAGE_CDROM=   Yes

NO_TEST=     Yes

do-build:
	(cd ${WRKBUILD}; ${MODAPACHE_APXS} -o mod_fastcgi.so -c *.c)

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_fastcgi
	${INSTALL_DATA} ${WRKBUILD}/docs/* ${PREFIX}/share/doc/mod_fastcgi
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
