BROKEN-hppa =	no atomic ops in pulse-simple dependency

COMMENT =	general-purpose software audio FSK modem
# next version should have a native sndio backend
DISTNAME =	minimodem-0.24
CATEGORIES =	comms

HOMEPAGE =	http://www.whence.com/minimodem/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c fftw3f fftw3f_threads intl m pulse pulse-simple
WANTLIB += sndfile

MASTER_SITES =	http://www.whence.com/minimodem/

LIB_DEPENDS =	audio/libsndfile \
		audio/pulseaudio \
		math/fftw3,float

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS =	--without-alsa \
			--without-benchmarks \
			--with-pulseaudio \
			--with-sndfile

MAKE_FLAGS =	LIBS="-lfftw3f_threads -lfftw3f -lpulse-simple -lpulse -lsndfile -lintl -lm"

do-test:
	cd ${WRKSRC}/tests; ./run-self-tests

.include <bsd.port.mk>
