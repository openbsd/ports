COMMENT-main =	text font designed for accessibility and readability
COMMENT-web =	text font designed for accessibility and readability (web fonts)

MULTI_PACKAGES =	-main -web

MODFONT_FAMILY =	inclusive-sans
MODFONT_VERSION =	0.0.20250220

HOMEPAGE =	https://www.oliviaking.com/inclusivesans/feature

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

DIST_TUPLE =	github LivKing Inclusive-Sans 38b8ed1dd67bd25ef4180140492810cf050ef501 .

MODULES =	font
WRKSRC =	${WRKDIST}/fonts

MODFONT_FONTFILES =	otf/*.otf ttf/*.ttf variable/*.ttf
MODFONT_WEBFILES =	webfonts/*.woff2

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
