COMMENT =	Qt-based C++ library for the Last.fm webservices

GH_ACCOUNT =	lastfm
GH_PROJECT =	liblastfm
GH_TAGNAME =	1.1.0

CATEGORIES =	audio devel net

REVISION =	0

HOMEPAGE =	https://github.com/lastfm/liblastfm

SHARED_LIBS =  lastfm5                  0.0
SHARED_LIBS += lastfm_fingerprint5      0.0

# GPLv3
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network Qt5Sql
WANTLIB += Qt5Xml c fftw3f m samplerate

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	audio/libsamplerate \
		math/fftw3,float

# network access
TEST_IS_INTERACTIVE =	Yes

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
