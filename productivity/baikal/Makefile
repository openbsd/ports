# $OpenBSD: Makefile,v 1.3 2013/06/23 09:20:45 jung Exp $

COMMENT=	lightweight CalDAV and CardDAV server

DISTNAME=	baikal-regular-0.2.4
PKGNAME=	${DISTNAME:S/-regular//}
REVISION=	0
CATEGORIES=	productivity www

HOMEPAGE=	http://baikal-server.com/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

# Repackaged, since the original file is a gzip'd, gzip'd, tar.
MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/php

WRKDIST=	${WRKDIR}/baikal-regular/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/baikal/
SUBST_VARS=	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && tar cf - . | (cd ${INSTDIR}; tar xf -)

.include <bsd.port.mk>
