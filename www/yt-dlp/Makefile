COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2025.01.12
# on backport keep REVISION above -stable for 7.6 (no cryptodomex in -stable)
MODPY_DISTV =	${VERSION:S/.0/./g}

DISTNAME =	yt-dlp-${VERSION}
DISTFILES =	yt-dlp-${VERSION}{yt-dlp}${EXTRACT_SUFX}

CATEGORIES =	www

HOMEPAGE =	https://github.com/yt-dlp/yt-dlp/

# Public Domain
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/yt-dlp/yt-dlp/releases/download/${VERSION}/

MODULES =	lang/python

MODPY_PYBUILD =	hatchling

# deps are optional, though required for various site extractors
# or functionality. these ones are quite common and either don't
# pull in a big chain of other ports, or (in the case of ffmpeg)
# are strongly recommended.
RUN_DEPENDS =	audio/py-mutagen \
		devel/py-certifi \
		graphics/ffmpeg \
		security/py-cryptodomex \
		www/py-requests

TEST_DEPENDS +=	devel/flake8 \
		archivers/py-brotlicffi \
		net/py-websockets

WRKDIST =	${WRKDIR}/yt-dlp

.include <bsd.port.mk>
