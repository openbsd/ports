# $OpenBSD: Makefile,v 1.1.1.1 2014/12/20 19:31:44 bcallah Exp $

COMMENT =	general-purpose software audio FSK modem
DISTNAME =	minimodem-0.21
CATEGORIES =	comms

HOMEPAGE =	http://www.whence.com/minimodem/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fftw3f m pthread pulse pulse-simple sndfile

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

MAKE_FLAGS =	LIBS="-lfftw3f -lpulse-simple -lsndfile"

.include <bsd.port.mk>
