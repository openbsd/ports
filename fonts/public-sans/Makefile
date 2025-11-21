COMMENT-main =		strong, neutral, principles-driven typeface
COMMENT-web =		strong, neutral, principles-driven typeface (web fonts)

MODFONT_FAMILY =	public-sans
MODFONT_VERSION =	2.001

MULTI_PACKAGES =	-main -web

REVISION-main =		1

DISTNAME =		public-sans-v${MODFONT_VERSION}

HOMEPAGE =		https://public-sans.digital.gov/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/uswds/public-sans/releases/download/v${MODFONT_VERSION}/

MODULES =		font

MODFONT_FONTFILES =	fonts/*/*.ttf \
			fonts/*/*.otf
MODFONT_WEBFILES =	fonts/*/*.woff2

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
