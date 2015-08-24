# $OpenBSD: Makefile,v 1.2 2015/08/24 23:02:30 bcallah Exp $

COMMENT =	general-purpose software audio FSK modem
DISTNAME =	minimodem-0.22.1
CATEGORIES =	comms

HOMEPAGE =	http://www.whence.com/minimodem/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fftw3f fftw3f_threads m pthread pulse pulse-simple
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

MAKE_FLAGS =	LIBS="-lfftw3f_threads -lpulse-simple -lsndfile"

.include <bsd.port.mk>
