# $OpenBSD: Makefile,v 1.130 2015/05/06 12:23:29 dcoppa Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

MODPY_EGG_VERSION = 2015.05.04

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
