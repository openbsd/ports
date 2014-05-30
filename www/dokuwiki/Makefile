# $OpenBSD: Makefile,v 1.15 2014/05/30 13:20:13 sthen Exp $

COMMENT =	standards compliant, simple to use Wiki

VERSION =	2013-12-08
DISTNAME =	dokuwiki-${VERSION}
PKGNAME =	dokuwiki-${VERSION:S/-/./g}
CATEGORIES =	www
HOMEPAGE =	http://www.dokuwiki.org/dokuwiki
REVISION =	0

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.dokuwiki.org/src/dokuwiki/

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
	${SUBST_CMD} -c ${FILESDIR}/dokuwiki.conf ${INSTDIR}/dokuwiki.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
