# $OpenBSD: Makefile,v 1.2 2021/12/01 08:54:35 sthen Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2021.12.01
MODPY_EGG_VERSION =	${VERSION:S/.0/./g}

DISTNAME =	yt-dlp-${VERSION}
DISTFILES =	yt-dlp-${VERSION}{yt-dlp}${EXTRACT_SUFX}

CATEGORIES =	www

HOMEPAGE =	https://github.com/yt-dlp/yt-dlp/

# Public Domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/yt-dlp/yt-dlp/releases/download/${VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS +=	devel/flake8

WRKDIST =	${WRKDIR}/yt-dlp

.include <bsd.port.mk>
