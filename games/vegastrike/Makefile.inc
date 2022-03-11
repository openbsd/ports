ONLY_FOR_ARCHS =	amd64 i386
BROKEN-i386 =		-engine depends on broken x11/ogre, other subports are useless without
BROKEN =    		needs boost_python27, support for python3 is planned for 0.8.0

V =			0.5.1.r1

SUBST_VARS +=		V

CATEGORIES =		games

HOMEPAGE =		https://www.vega-strike.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

# New releases at https://github.com/vegastrike/Vega-Strike-Engine-Source/releases/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vegastrike/}
EXTRACT_SUFX ?=		.tar.bz2

NO_TEST =		Yes
