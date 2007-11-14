# $OpenBSD: Makefile,v 1.3 2007/11/14 12:28:53 jasper Exp $

COMMENT=	wiki-based system for collaborative creation of websites

DISTNAME=	pmwiki-2.1.27
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tgz

CATEGORIES=	www
HOMEPAGE=	http://pmwiki.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/pub/pmwiki/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/pmwiki
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-core-*:www/php5/core

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTFILES}
	@mv ${PREFIX}/${DISTNAME} ${PREFIX}/pmwiki
	@perl -pi -e "s,/.flock,/wiki.d/.flock,g" ${PREFIX}/pmwiki/pmwiki.php
	@${INSTALL_DATA_DIR} ${PREFIX}/pmwiki/wiki.d ${PREFIX}/pmwiki/uploads

.include <bsd.port.mk>
