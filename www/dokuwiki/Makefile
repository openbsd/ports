COMMENT =	standards compliant, simple to use Wiki

VERSION =	2023-04-04
DISTNAME =	dokuwiki-${VERSION}
PKGNAME =	dokuwiki-${VERSION:S/-/./g}
REVISION =	0
CATEGORIES =	www
HOMEPAGE =	https://www.dokuwiki.org/dokuwiki

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		https://download.dokuwiki.org/src/dokuwiki/

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
