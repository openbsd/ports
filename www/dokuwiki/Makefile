# $OpenBSD: Makefile,v 1.7 2012/09/10 09:16:33 jasper Exp $

COMMENT =	standards compliant, simple to use Wiki

VERSION =	2012-01-25b
DISTNAME = 	dokuwiki-${VERSION}
PKGNAME = 	dokuwiki-${VERSION:S/-/./g}
REVISION =	0
CATEGORIES =	www
HOMEPAGE =	http://www.dokuwiki.org/dokuwiki

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.splitbrain.org/_media/projects/dokuwiki/

EXTRACT_SUFX = 	.tgz
NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

MODULES=	lang/php

PREFIX =	/var/www
INSTDIR =	${PREFIX}/dokuwiki
SUBST_VARS =	INSTDIR
WRKDIST = 	${WRKDIR}/${DISTNAME:S/c//}

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
