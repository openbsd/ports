# $OpenBSD: Makefile,v 1.5 2017/05/13 09:49:50 espie Exp $

COMMENT =		simple and fast multimedia library

V =			2.4.0
DISTNAME =		SFML-${V}-sources
PKGNAME =		sfml-${V}
EXTRACT_SUFX =		.zip

SHARED_LIBS +=  sfml-audio                1.0 # 2.1
SHARED_LIBS +=  sfml-graphics             1.0 # 2.1
SHARED_LIBS +=  sfml-network              1.0 # 2.1
SHARED_LIBS +=  sfml-system               1.0 # 2.1
SHARED_LIBS +=  sfml-window               1.0 # 2.1

CATEGORIES =		multimedia

HOMEPAGE =		http://www.sfml-dev.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# zlib/libpng
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL X11-xcb freetype jpeg m ogg openal vorbis vorbisenc
WANTLIB += vorbisfile xcb xcb-image xcb-randr

MASTER_SITES =		http://www.sfml-dev.org/download/sfml/${V}/

MODULES =		devel/cmake

WANT_CXX =	base gcc
MODGCC4_LANGS =		c c++

LIB_DEPENDS =		audio/openal \
			graphics/jpeg \
			audio/libvorbis \
			audio/flac

CONFIGURE_ARGS +=	-DSFML_INSTALL_PKGCONFIG_FILES=BOOL:TRUE

FAKE_FLAGS =		DESTDIR=${DESTDIR} PREFIX=${PREFIX}
.for l v in ${SHARED_LIBS}
FAKE_FLAGS +=		LIB${l}_VERSION=${v}
MAKE_FLAGS +=		LIB${l}_VERSION=${v}
.endfor

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/SFML-${V}

post-extract:
	find ${WRKSRC} -type f -exec perl -pi -e 's/\015//g' {} \;

post-install:
	find ${PREFIX}/include -name '*.orig' -exec rm {} \;

.include <bsd.port.mk>
