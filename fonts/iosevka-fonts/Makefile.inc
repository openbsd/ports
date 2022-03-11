V =			    11.3.0
CATEGORIES =	fonts x11
HOMEPAGE =		https://github.com/be5invis/iosevka
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =Yes

MASTER_SITES =	https://github.com/be5invis/iosevka/releases/download/v${V}/
EXTRACT_SUFX =	.zip

NO_BUILD =		Yes
NO_TEST =		Yes

# distfiles are zip bombs.
WRKDIST =		${WRKDIR}

PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/iosevka
