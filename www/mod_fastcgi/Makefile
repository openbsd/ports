# $OpenBSD: Makefile,v 1.9 2009/06/19 12:19:00 simon Exp $

COMMENT=        Apache FastCGI module

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

MAINTAINER=     Marc Balmer <mbalmer@openbsd.org>

# Proprietary license
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_REGRESS=     Yes

do-build:
	(cd ${WRKBUILD}; apxs -o mod_fastcgi.so -c *.c)

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_fastcgi
	${INSTALL_DATA} ${WRKBUILD}/docs/* ${PREFIX}/share/doc/mod_fastcgi
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
