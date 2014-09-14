# $OpenBSD: Makefile,v 1.1.1.1 2014/09/14 21:01:52 pascal Exp $

SHARED_ONLY =		Yes

COMMENT =		simple and fast multimedia library

V =			2.1
DISTNAME =		SFML-${V}-sources
PKGNAME =		sfml-${V}
EXTRACT_SUFX =		.zip

SHARED_LIBS +=  sfml-audio                0.0 # 2.1
SHARED_LIBS +=  sfml-graphics             0.0 # 2.1
SHARED_LIBS +=  sfml-network              0.0 # 2.1
SHARED_LIBS +=  sfml-system               0.0 # 2.1
SHARED_LIBS +=  sfml-window               0.0 # 2.1

CATEGORIES =		multimedia

HOMEPAGE =		http://www.sfml-dev.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# zlib/libpng
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW ICE SM X11 Xext Xrandr freetype jpeg m openal
WANTLIB += pthread sndfile stdc++

MASTER_SITES =		http://www.sfml-dev.org/download/sfml/${V}/

MODULES =		devel/cmake

LIB_DEPENDS =		audio/openal \
			audio/libsndfile \
			graphics/glew \
			graphics/jpeg

FAKE_FLAGS =		DESTDIR=${DESTDIR} PREFIX=${PREFIX}
.for l v in ${SHARED_LIBS}
FAKE_FLAGS +=		LIB${l}_VERSION=${v}
MAKE_FLAGS +=		LIB${l}_VERSION=${v}
.endfor

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/SFML-${V}

post-extract:
	find ${WRKSRC} -type f -exec perl -pi -e 's/\015//g' {} \;

post-patch:
	find ${WRKSRC}/include -name '*.orig' -exec rm {} \;

.include <bsd.port.mk>
