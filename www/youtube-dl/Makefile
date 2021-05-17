
# $OpenBSD: Makefile,v 1.246 2021/05/17 12:51:50 mestre Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2021.05.16
MODPY_EGG_VERSION =	${VERSION:S/.0/./g}

DISTNAME =	youtube-dl-${VERSION}
CATEGORIES =	www

HOMEPAGE =	https://yt-dl.org

MAINTAINER =	Ricardo Mestre <mestre@openbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://youtube-dl.org/downloads/${VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS +=	devel/flake8

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
