# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:47 sthen Exp $

BROKEN-hppa =	no atomic ops in pulse-simple dependency
COMMENT =	general-purpose software audio FSK modem
DISTNAME =	minimodem-0.22.1
CATEGORIES =	comms
REVISION =	1

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

.include <bsd.port.mk>
