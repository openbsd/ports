# $OpenBSD: Makefile,v 1.3 2007/05/07 13:46:59 bernd Exp $

COMMENT-main=	"base classes for common PHP tasks"
COMMENT-utils=	"utilities for managing pear extensions"

VERSION=	1.5.0
DISTNAME=	pear-${VERSION}
PKGNAME=	${DISTNAME}
PKGNAME-main=	${DISTNAME}p0
PKGNAME-utils=	pear-utils-${VERSION}p0
CATEGORIES=	www devel

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://pear.php.net/
MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=ale/}

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -utils

BUILD_DEPENDS=		:php5-core-*:www/php5/core
RUN_DEPENDS-main=	${BUILD_DEPENDS} \
			::www/pear,-utils

# Most of pear have to live in /var/www where apache is chroot'ed to.
PREFIX-main=	/var/www
PREFIX-utils=	/usr/local

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@perl -pi -e "s,%%PREFIX%%,${WRKINST}${PREFIX-main},g" ${WRKSRC}/go-pear
	@${LOCALBASE}/bin/php -q ${WRKSRC}/go-pear

	@mv ${WRKINST}${PREFIX-main}/bin ${WRKINST}${PREFIX-utils}/
	@mv ${WRKINST}${PREFIX-main}/share/doc/pear ${WRKINST}${PREFIX-utils}/share/doc/
	@rm -rf ${WRKINST}${PREFIX-main}/share ${WRKINST}${PREFIX-main}/etc

	@find ${WRKINST}${PREFIX-main} -name "*.php" -exec perl -pi -e "s,${WRKINST},,g" {} \; 
	@find ${WRKINST}${PREFIX-utils}/bin -type f -exec perl -pi -e "s,${WRKINST},,g" {} \;

	@patch -d ${WRKINST}${PREFIX-main}/pear < ${FILESDIR}/patch-lib_PEAR_Config_php
	@perl -pi -e "s,OPENBSD_PEAR_ROOT,'${PREFIX-main}/pear',g" \
		${WRKINST}${PREFIX-main}/pear/lib/PEAR/Config.php

.include <bsd.port.mk>
