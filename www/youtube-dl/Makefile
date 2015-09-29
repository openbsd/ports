# $OpenBSD: Makefile,v 1.138 2015/09/29 09:02:55 edd Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

MODPY_EGG_VERSION =	2015.8.23
REVISION =		0

DISTNAME =	youtube-dl-2015.08.23
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.io/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://yt-dl.org/downloads/${MODPY_EGG_VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/py-setuptools>=18.2v0

NO_TEST =	Yes

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
