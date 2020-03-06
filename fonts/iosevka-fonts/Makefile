# $OpenBSD: Makefile,v 1.1.1.1 2020/03/06 19:32:35 edd Exp $

COMMENT-main =		slender typeface for code (default variant)
COMMENT-term =		slender typeface for code (term variant)

V =			2.3.3
PKGNAME =		iosevka-fonts-default-${V}
PKGNAME-main =		${PKGNAME}
PKGNAME-term =		iosevka-fonts-term-${V}

# The font has many different variants. We are only packaging the 'default'
# variant (for general use) and the 'term' variant (designed for monospace
# terminals), but more could be added later if need be. See the releases page
# on Github for a complete list.
DISTFILES =		01-iosevka-${V}${EXTRACT_SUFX} \
			02-iosevka-term-${V}${EXTRACT_SUFX}

CATEGORIES =		fonts x11

HOMEPAGE =		https://github.com/be5invis/iosevka

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/be5invis/iosevka/releases/download/v${V}/
EXTRACT_SUFX =		.zip

MULTI_PACKAGES =	-main -term

NO_BUILD =		Yes
NO_TEST =		Yes

# distfile is a zip bomb.
WRKDIST =		${WRKDIR}

PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/iosevka

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/ttf/*.ttf ${FONTDIR}

.include <bsd.port.mk>
