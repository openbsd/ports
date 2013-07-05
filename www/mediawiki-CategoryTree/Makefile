# $OpenBSD: Makefile,v 1.5 2013/07/05 09:34:35 jasper Exp $

COMMENT =	dynamic view of the wiki's category structure as a tree

V =		48711
DISTNAME =	CategoryTree-MW1.15-r${V}
PKGNAME =	mediawiki-CategoryTree-${V}
REVISION =	0
CATEGORIES =	www

MAINTAINER =	Wen Heping <wenheping@gmail.com>

HOMEPAGE =	http://www.mediawiki.org/wiki/Extension:CategoryTree
MASTER_SITES =	http://upload.wikimedia.org/ext-dist/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

PREFIX =	${VARBASE}/www
EXTENSIONSDIR =	${PREFIX}/mediawiki/extensions

RUN_DEPENDS =	www/mediawiki>=1.15.1

do-install:
	${INSTALL_DATA_DIR} ${EXTENSIONSDIR}/CategoryTree
	${INSTALL_DATA} ${WRKDIR}/CategoryTree/* ${EXTENSIONSDIR}/CategoryTree/

.include <bsd.port.mk>
