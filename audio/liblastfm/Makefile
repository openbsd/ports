# $OpenBSD: Makefile,v 1.3 2013/08/07 21:57:42 naddy Exp $

SHARED_ONLY =	Yes

COMMENT =	Qt-based C++ library for the Last.fm webservices
V =		1.0.6
DISTNAME =	$V
PKGNAME =	liblastfm-$V
REVISION =	0
CATEGORIES =	audio devel net

HOMEPAGE =	https://github.com/lastfm/liblastfm
MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

SHARED_LIBS =	lastfm			0.0
SHARED_LIBS +=	lastfm_fingerprint	0.0

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

# archives are stable but naming scheme sucks, thus DIST_SUBDIR
MASTER_SITES =	${HOMEPAGE}/archive/
DIST_SUBDIR =	liblastfm
WRKDIST =	${WRKDIR}/${PKGNAME}

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += fftw3f c m pthread samplerate stdc++

LIB_DEPENDS =	audio/libsamplerate \
		math/fftw3,float

MODULES =	devel/cmake x11/qt4

.include <bsd.port.mk>
