# $OpenBSD: Makefile,v 1.27 2018/05/11 20:12:46 sthen Exp $

COMMENT =	standards compliant, simple to use Wiki

VERSION =	2017-02-19e
REVISION =	1
DISTNAME =	dokuwiki-${VERSION}
PKGNAME =	dokuwiki-${VERSION:S/-/./g}
CATEGORIES =	www
HOMEPAGE =	http://www.dokuwiki.org/dokuwiki

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

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd \
		security/pecl56-libsodium

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
