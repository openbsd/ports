ONLY_FOR_ARCHS =	amd64 i386

V =			0.9.1

SUBST_VARS +=		V

CATEGORIES =		games

HOMEPAGE =		https://www.vega-strike.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES ?=		https://github.com/vegastrike/Vega-Strike-Engine-Source/releases/download/v${V}/
EXTRACT_SUFX ?=		.tar.bz2

NO_TEST =		Yes
