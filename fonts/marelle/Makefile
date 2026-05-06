COMMENT-main =	cursive font for school teaching
COMMENT-web =	cursive font for school teaching (web fonts)

MODFONT_FAMILY =	marelle
MODFONT_VERSION =	1.004
SITES.gitlab =		https://forge.apps.education.fr/
DIST_TUPLE +=		gitlab marelle marelle.forge.apps.education.fr v${MODFONT_VERSION} .

MULTI_PACKAGES =	-main -web

MODULES =		font

HOMEPAGE =		https://marelle.forge.apps.education.fr/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =	${WRKDIR}/marelle.forge.apps.education.fr-v${MODFONT_VERSION}-93887d1b4da2530114a55bc68555b2e6a5d9ada8

MODFONT_FONTFILES =	fonts/ttf/*.ttf \
			fonts/otf/*.otf

MODFONT_WEBFILES = fonts/webfonts/*.woff2

.include <bsd.port.mk>
