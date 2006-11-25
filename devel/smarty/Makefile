# $OpenBSD: Makefile,v 1.3 2006/11/25 18:22:06 espie Exp $

COMMENT-main=	"template engine for PHP"
COMMENT-docs=	"documentation for Smarty"

VERSION=	2.6.14
DISTNAME=	Smarty-${VERSION}
PKGNAME-main=	smarty-${VERSION}p0
PKGNAME-docs=	smarty-docs-${VERSION}
CATEGORIES=	devel www

HOMEPAGE=	http://smarty.php.net/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/do_download.php?download_file=
MASTER_SITES0=	${HOMEPAGE}/distributions/manual/en/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME}-docs${EXTRACT_SUFX}:0

MULTI_PACKAGES= -main -docs

PHP_VERSION=	5
RUN_DEPENDS-main=::www/php${PHP_VERSION}/core

CHROOT_DIR=	/var/www

PREFIX-main=		${CHROOT_DIR}

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${CHROOT_DIR}/smarty
	cd ${WRKSRC}/libs; tar cf - . | \
		tar xf - -C ${WRKINST}${CHROOT_DIR}/smarty
	${CHOWN} -R ${LIBOWN}:${LIBGRP} ${WRKINST}${CHROOT_DIR}/smarty

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smarty
	cd ${WRKDIR}/manual; tar cf - . | \
		tar xf - -C ${PREFIX}/share/doc/smarty
	${CHOWN} -R ${DOCOWN}:${DOCGRP} ${PREFIX}/share/doc/smarty

.include <bsd.port.mk>
