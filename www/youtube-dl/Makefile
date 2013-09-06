# $OpenBSD: Makefile,v 1.47 2013/09/06 07:47:16 pirofti Exp $

COMMENT =	command-line program to download videos from YouTube.com

MODPY_EGG_VERSION = 2013.09.05

DISTNAME =	youtube-dl-${MODPY_EGG_VERSION}
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.com/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://youtube-dl.org/downloads/${MODPY_EGG_VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

MODPY_BADEGGS =	youtube-dl

USE_GROFF =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
