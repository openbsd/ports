COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2024.05.26
MODPY_EGG_VERSION =	${VERSION:S/.0/./g}

DISTNAME =	yt-dlp-${VERSION}
DISTFILES =	yt-dlp-${VERSION}{yt-dlp}${EXTRACT_SUFX}

CATEGORIES =	www

HOMEPAGE =	https://github.com/yt-dlp/yt-dlp/

MAINTAINER =	Ricardo Mestre <mestre@openbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/yt-dlp/yt-dlp/releases/download/${VERSION}/

MODULES =	lang/python

MODPY_PYBUILD =	hatchling

TEST_DEPENDS +=	devel/flake8

WRKDIST =	${WRKDIR}/yt-dlp

.include <bsd.port.mk>
