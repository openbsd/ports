COMMENT-main =	expressive monospaced font family
COMMENT-web =	expressive monospaced font family (web fonts)

MULTI_PACKAGES =	-main -web

MODFONT_VERSION =	1.4.0
MODFONT_FAMILY =	intel-one-mono
REVISION =		0

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/intel/intel-one-mono/releases/download/V${MODFONT_VERSION}/

DISTFILES =	otf.zip \
		ttf.zip \
		woff2.zip

DIST_SUBDIR =	intel-one-mono-${MODFONT_VERSION}

HOMEPAGE =	https://github.com/intel/intel-one-mono

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

MODFONT_FONTFILES =	otf/*.otf \
			ttf/*.ttf
MODFONT_WEBFILES =	woff2/*.woff2

.include <bsd.port.mk>
