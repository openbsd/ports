# $OpenBSD: Makefile,v 1.12 2019/07/17 14:49:20 danj Exp $

COMMENT =	Qt-based C++ library for the Last.fm webservices
V =		1.0.9
DISTNAME =	$V
PKGNAME =	liblastfm-$V
CATEGORIES =	audio devel net
REVISION =	3

HOMEPAGE =	https://github.com/lastfm/liblastfm
SHARED_LIBS =	lastfm			1.0
SHARED_LIBS +=	lastfm_fingerprint	1.0

# GPLv3
PERMIT_PACKAGE =		Yes

# archives are stable but naming scheme sucks, thus DIST_SUBDIR
MASTER_SITES =	${HOMEPAGE}/archive/
DIST_SUBDIR =	liblastfm
WRKDIST =	${WRKDIR}/${PKGNAME}

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += fftw3f c m pthread samplerate ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	audio/libsamplerate \
		math/fftw3,float

MODULES =	devel/cmake x11/qt4

CONFIGURE_ARGS =	-DBUILD_WITH_QT4=On

# network access
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
