# $OpenBSD: Makefile,v 1.4 2013/03/10 22:55:01 espie Exp $

COMMENT =		extract annotations from audio signals
DISTNAME =		aubio-0.3.2
SHARED_LIBS += 		aubio		0.0 # 3.1
SHARED_LIBS += 		aubioext	0.0 # 3.1
CATEGORIES =		audio
HOMEPAGE =		http://aubio.org
REVISION =		0

# GPLv2+ 
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread fftw3f jack samplerate sndfile

MASTER_SITES=		${HOMEPAGE}/pub/

MODULES =		lang/python

BUILD_DEPENDS =		devel/swig \
			textproc/docbook-to-man
LIB_DEPENDS =		audio/jack \
			math/fftw3,float

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += 	${CONFIGURE_SHARED}
CONFIGURE_FLAGS +=	--enable-test-progs
CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

TEST_TARGET = 	run-tests
# regress requires a running jackd instance
TEST_IS_INTERACTIVE = Yes
do-test:
	(cd ${WRKSRC}/examples/tests && env -i ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET} \
		${TEST_LOG})

.include <bsd.port.mk>
