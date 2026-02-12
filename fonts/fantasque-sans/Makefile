COMMENT-main =	programming font designed with functionality in mind
COMMENT-web =	programming (web)font designed with functionality in mind

MULTI_PACKAGES =	-main -web

MODFONT_FAMILY =	fantasque-sans
MODFONT_VERSION =	1.8.0
DIST_SUBDIR =		${PKGNAME}
DISTNAME =		FantasqueSansMono-Normal
REVISION =		2

MODULES =		font

HOMEPAGE =			https://fontlibrary.org/en/font/fantasque-sans-mono

# SIL OFL 1.1
PERMIT_PACKAGE =		Yes

SITES =	https://github.com/belluzj/fantasque-sans/releases/download/v${MODFONT_VERSION}/

NO_BUILD =			Yes
NO_TEST =			Yes

WRKDIST =	${WRKDIR}

MODFONT_FONTFILES =	OTF/*.otf TTF/*.ttf
MODFONT_WEBFILES =	Webfonts/*.woff2

.include <bsd.port.mk>
