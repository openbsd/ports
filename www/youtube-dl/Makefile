# $OpenBSD: Makefile,v 1.152 2016/05/13 10:47:50 dcoppa Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2016.05.10
MODPY_EGG_VERSION =	${VERSION:S/.0/./g}

DISTNAME =	youtube-dl-${VERSION}
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.io/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://yt-dl.org/downloads/${VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
