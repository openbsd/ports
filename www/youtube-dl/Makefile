
# $OpenBSD: Makefile,v 1.249 2021/11/24 14:11:01 sthen Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2021.06.06
MODPY_EGG_VERSION =	${VERSION:S/.0/./g}

DISTNAME =	youtube-dl-${VERSION}
CATEGORIES =	www
REVISION =	1

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
