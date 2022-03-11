COMMENT =	Qt-based C++ library for the Last.fm webservices
V =		1.1.0
DISTNAME =	$V
PKGNAME =	liblastfm-$V
CATEGORIES =	audio devel net

HOMEPAGE =	https://github.com/lastfm/liblastfm

SHARED_LIBS =  lastfm5                  0.0
SHARED_LIBS += lastfm_fingerprint5      0.0

# GPLv3
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network Qt5Sql
WANTLIB += Qt5Xml c fftw3f m samplerate

# archives are stable but naming scheme sucks, thus DIST_SUBDIR
MASTER_SITES =	https://github.com/lastfm/liblastfm/archive/
DIST_SUBDIR =	liblastfm
WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	audio/libsamplerate \
		math/fftw3,float

# network access
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
