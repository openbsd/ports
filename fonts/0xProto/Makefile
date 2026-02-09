COMMENT-main =	programming font focused on source code legibility
COMMENT-web =	programming (web)font focused on source code legibility

MULTI_PACKAGES =	-main -web

MODFONT_VERSION =	2.502
MODFONT_FAMILY =	0xProto
DISTNAME=		0xProto_${MODFONT_VERSION:S/./_/}

MODULES =	font

# OFL-1.1
PERMIT_PACKAGE=		Yes

SITES =		https://github.com/0xType/0xProto/releases/download/${MODFONT_VERSION}/

MODFONT_FONTFILES =	*.otf *.ttf
MODFONT_WEBFILES =	*.woff2

NO_BUILD=		Yes

WRKDIST =		${WRKDIR}

.include <bsd.port.mk>
