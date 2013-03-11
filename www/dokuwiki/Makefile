# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:41 espie Exp $

COMMENT =	standards compliant, simple to use Wiki

VERSION =	2012-10-13
DISTNAME = 	dokuwiki-${VERSION}
PKGNAME = 	dokuwiki-${VERSION:S/-/./g}
CATEGORIES =	www
HOMEPAGE =	http://www.dokuwiki.org/dokuwiki

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.splitbrain.org/_media/projects/dokuwiki/

EXTRACT_SUFX = 	.tgz
NO_BUILD =	Yes
NO_TEST =	Yes
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
