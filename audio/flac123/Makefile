COMMENT=		command-line FLAC player

GH_ACCOUNT=		flac123
GH_PROJECT=		flac123
GH_TAGNAME=		v2.1.1

CATEGORIES=		audio

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		FLAC ao c m ogg popt
LIB_DEPENDS=		audio/flac \
			audio/libao \
			devel/popt

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-default-audio=sndio
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
