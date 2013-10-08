# $OpenBSD: Makefile,v 1.51 2013/10/08 10:48:09 dcoppa Exp $

COMMENT =	command-line program to download videos from YouTube.com

MODPY_EGG_VERSION = 2013.10.07

DISTNAME =	youtube-dl-${MODPY_EGG_VERSION}
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.io/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://yt-dl.org/downloads/${MODPY_EGG_VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

USE_GROFF =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
