# $OpenBSD: Makefile,v 1.32 2018/10/17 14:15:56 sthen Exp $

COMMENT =	standards compliant, simple to use Wiki

VERSION =	2018-04-22a
DISTNAME =	dokuwiki-${VERSION}
PKGNAME =	dokuwiki-${VERSION:S/-/./g}
CATEGORIES =	www
HOMEPAGE =	https://www.dokuwiki.org/dokuwiki
REVISION =	1

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://download.dokuwiki.org/src/dokuwiki/

EXTRACT_SUFX =	.tgz
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

MODULES=	lang/php

PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/dokuwiki
TINSTDIR =	${TRUEPREFIX}/dokuwiki
SUBST_VARS =	INSTDIR TINSTDIR

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
