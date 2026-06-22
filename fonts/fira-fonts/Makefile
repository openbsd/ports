COMMENT-main =		Firefox OS typeface
COMMENT-web =		Firefox OS typeface (web fonts)

MULTI_PACKAGES =	-main -web

MODFONT_FAMILY =	fira
MODFONT_VERSION =	4.202
PKGNAME =		fira-fonts-${MODFONT_VERSION}
EPOCH =			0
REVISION =		1

GH_ACCOUNT =		mozilla
GH_PROJECT =		fira
GH_TAGNAME =		${MODFONT_VERSION}

CATEGORIES =		fonts x11

HOMEPAGE =		https://mozilla.github.io/Fira/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/Fira-${MODFONT_VERSION}

MODFONT_FONTFILES =	otf/*.otf ttf/*.ttf
MODFONT_DOCFILES =	LICENSE README.md
MODFONT_WEBFILES =	woff2/*.woff2

.include <bsd.port.mk>
