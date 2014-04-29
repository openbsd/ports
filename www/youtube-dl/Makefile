# $OpenBSD: Makefile,v 1.88 2014/04/29 08:11:30 pirofti Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

MODPY_EGG_VERSION = 2014.04.21.6

DISTNAME =	youtube-dl-${MODPY_EGG_VERSION}
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.io/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://yt-dl.org/downloads/${MODPY_EGG_VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
