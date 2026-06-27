COMMENT-main =	full suite of pictographic icons
COMMENT-web =	full suite of pictographic icons (web fonts)

MULTI_PACKAGES =	-main -web

DISTFILES =	fontawesome-free-${MODFONT_VERSION}-desktop.zip \
		fontawesome-free-${MODFONT_VERSION}-web.zip

MODFONT_FAMILY =	font-awesome
MODFONT_VERSION =	7.3.0

HOMEPAGE =	https://fontawesome.com

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =	https://github.com/FortAwesome/Font-Awesome/releases/download/${MODFONT_VERSION}/

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

MODFONT_FONTFILES =	*/otfs/*.otf
MODFONT_DOCFILES =	*-desktop/*.txt
MODFONT_WEBFILES =	*/webfonts/*.woff2

.include <bsd.port.mk>
