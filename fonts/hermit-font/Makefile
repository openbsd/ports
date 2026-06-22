COMMENT-main =	clear, readable monospaced font
COMMENT-web =	clear, readable monospaced font (web fonts)

MULTI_PACKAGES =	-main -web

MODFONT_FAMILY=	hermit
MODFONT_VERSION=2.0
REVISION =	1
DISTNAME =	full-hermit-${MODFONT_VERSION}
PKGNAME=	hermit-font-${MODFONT_VERSION}

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://pcaro.es/p/hermit/
SITES =		https://pcaro.es/d/
EXTRACT_SUFX=	.tar.gz

MODULES=	font

NO_BUILD=	Yes
NO_TEST=	Yes

MODFONT_FONTFILES=	*.otf
MODFONT_WEBFILES =	*.woff2
WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
