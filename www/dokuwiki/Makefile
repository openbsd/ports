# $OpenBSD: Makefile,v 1.2 2011/09/16 12:00:06 espie Exp $

COMMENT =	standards compliant, simple to use Wiki

DISTNAME = 	dokuwiki-2011-05-25a
PKGNAME = 	${DISTNAME:S/-05-/.05./}
REVISION=	0
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
