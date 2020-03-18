# $OpenBSD: Makefile,v 1.11 2020/03/18 18:53:45 sebastia Exp $

COMMENT =		simple and fast multimedia library

V =			2.4.0
DISTNAME =		SFML-${V}-sources
PKGNAME =		sfml-${V}
EXTRACT_SUFX =		.zip
REVISION =		2

SHARED_LIBS +=  sfml-audio                1.0 # 2.1
SHARED_LIBS +=  sfml-graphics             1.0 # 2.1
SHARED_LIBS +=  sfml-network              1.0 # 2.1
SHARED_LIBS +=  sfml-system               1.0 # 2.1
SHARED_LIBS +=  sfml-window               1.0 # 2.1

CATEGORIES =		multimedia

HOMEPAGE =		https://www.sfml-dev.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# zlib/libpng
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC GL X11-xcb freetype jpeg m ogg openal vorbis vorbisenc
WANTLIB += vorbisfile xcb xcb-image xcb-randr usbhid ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.sfml-dev.org/files/

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

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
	mkdir ${WRKSRC}/src/SFML/Window/OpenBSD
	cp ${FILESDIR}/JoystickImpl.* ${WRKSRC}/src/SFML/Window/OpenBSD

post-install:
	find ${PREFIX}/include -name '*.orig' -exec rm {} \;

.include <bsd.port.mk>
