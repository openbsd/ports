COMMENT =	Japanese latin-style TrueType fonts

MODFONT_FAMILY =  genei-latin
MODFONT_VERSION = 2.1

DISTNAME =	GenEiLatin-Separate_v${MODFONT_VERSION}

CATEGORIES =	japanese x11

HOMEPAGE =	https://okoneya.jp/font/genei-latin.html

#SIL OFL 1.1
PERMIT_PACKAGE=	Yes

SITES =			https://okoneya.jp/font/

MODULES =		font
NO_BUILD =		Yes
NO_TEST =		Yes

BUILD_DEPENDS =		japanese/nkf

MODFONT_DOCFILES =	LICENSE*

post-install:
	# fix filename line break, and encoding (UTF-16 -> UTF-8)
	nkf -W16 -Lu -w8 ${WRKSRC}/readme_*txt > ${MODFONT_DOCDIR}/readme_ja.txt

.include <bsd.port.mk>
