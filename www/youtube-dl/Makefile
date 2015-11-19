# $OpenBSD: Makefile,v 1.145 2015/11/19 10:50:20 pirofti Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2015.11.18
MODPY_EGG_VERSION =	${VERSION:S/.0/./}

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
