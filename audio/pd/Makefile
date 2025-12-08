COMMENT =		real-time graphical programming language for multimedia

DISTNAME =		pd-0.56-2.src
PKGNAME =		pd-0.56.2

CATEGORIES =		audio multimedia

HOMEPAGE =		https://puredata.info

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c fftw3f m portaudio portmidi pthread sndio

SITES =			http://msp.ucsd.edu/Software/

MODULES =		x11/tk

BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS} \
			devel/gettext,-tools \
			devel/libtool

LIB_DEPENDS =		audio/portaudio-svn \
			audio/portmidi \
			math/fftw3,float

RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.18
CONFIGURE_ARGS =	--disable-oss \
			--enable-fftw \
			--enable-portaudio \
			--enable-portmidi \
			--without-local-portaudio \
			--without-local-portmidi \
			--with-deken-os=OpenBSD \
			--with-wish=${MODTK_BIN}
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -lportmidi" \
			CPPFLAGS="-I${LOCALBASE}/include"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/.src//}

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/tcl/pd-gui.tcl

post-install:
	cd ${PREFIX} && ln -sf ../../../bin/pd lib/pd/bin/pd

.include <bsd.port.mk>
