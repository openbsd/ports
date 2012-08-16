# $OpenBSD: Makefile,v 1.1.1.1 2012/08/16 15:08:09 stsp Exp $

COMMENT =		extract annotations from audio signals
DISTNAME =		aubio-0.3.2
SHARED_LIBS += 		aubio		0.0 # 3.1
SHARED_LIBS += 		aubioext	0.0 # 3.1
CATEGORIES =		audio
HOMEPAGE =		http://aubio.org

# GPLv2+ 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread fftw3f jack samplerate sndfile
MASTER_SITES =		http://aubio.org/pub/
MODULES =		lang/python
BUILD_DEPENDS =		devel/swig
LIB_DEPENDS =		audio/jack \
			math/fftw3,float
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += 	${CONFIGURE_SHARED}
CONFIGURE_FLAGS +=	--enable-test-progs
CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_TARGET = 	run-tests
# regress requires a running jackd instance
REGRESS_IS_INTERACTIVE = Yes
do-regress:
	(cd ${WRKSRC}/examples/tests && env -i ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET} \
		${REGRESS_LOG})

.include <bsd.port.mk>
