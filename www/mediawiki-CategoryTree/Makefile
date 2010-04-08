# $OpenBSD: Makefile,v 1.1.1.1 2010/04/08 08:03:08 stephan Exp $

COMMENT =	dynamic view of the wiki's category structure as a tree

V =		48711
DISTNAME =	CategoryTree-MW1.15-r${V}
PKGNAME =	mediawiki-CategoryTree-${V}
CATEGORIES =	www

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

HOMEPAGE =	http://www.mediawiki.org/wiki/Extension:CategoryTree
MASTER_SITES =	http://upload.wikimedia.org/ext-dist/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
EXTENSIONSDIR =	${PREFIX}/mediawiki/extensions

RUN_DEPENDS =	:mediawiki->=1.15.1:www/mediawiki

do-install:
	${INSTALL_DATA_DIR} ${EXTENSIONSDIR}/CategoryTree
	${INSTALL_DATA} ${WRKDIR}/CategoryTree/* ${EXTENSIONSDIR}/CategoryTree/

.include <bsd.port.mk>
