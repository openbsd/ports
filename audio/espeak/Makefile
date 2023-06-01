COMMENT=		compact speech synthesizer

GH_ACCOUNT=		espeak-ng
GH_PROJECT=		espeak-ng
GH_TAGNAME=		1.51
PKGNAME=		${DISTNAME:S/-ng//}
REVISION=		1

SHARED_LIBS +=	espeak-ng                 0.0 # 2.51

CATEGORIES=		audio devel

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c execinfo iconv m ogg pcaudio pulse
WANTLIB += pulse-simple vorbis xcb

COMPILER=		base-clang ports-gcc base-gcc

LIB_DEPENDS=		audio/pcaudiolib

USE_GMAKE=		Yes
NO_TEST=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
AUTORECONF=		./autogen.sh

CONFIGURE_STYLE=	autoreconf
# upstream is doing something odd and doesn't add LDFLAGS/CXXFLAGS if CPPFLAGS is set
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
