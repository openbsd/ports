# $OpenBSD: Makefile,v 1.15 2022/01/01 12:28:46 pascal Exp $

COMMENT =		simple and fast multimedia library

V =			2.5.1
DISTNAME =		SFML-${V}-sources
PKGNAME =		sfml-${V}
REVISION =		0
EXTRACT_SUFX =		.zip

SHARED_LIBS +=  sfml-audio                2.0 # 2.1
SHARED_LIBS +=  sfml-graphics             2.0 # 2.1
SHARED_LIBS +=  sfml-network              2.0 # 2.1
SHARED_LIBS +=  sfml-system               2.0 # 2.1
SHARED_LIBS +=  sfml-window               2.0 # 2.1

CATEGORIES =		multimedia

HOMEPAGE =		https://www.sfml-dev.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# zlib/libpng
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL GLU freetype m ogg openal
WANTLIB += vorbis vorbisenc vorbisfile

MASTER_SITES =		https://www.sfml-dev.org/files/

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		audio/openal \
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

post-patch:
	${SUBST_CMD} ${WRKSRC}/tools/pkg-config/sfml-window.pc.in

post-install:
	find ${PREFIX}/include -name '*.orig' -exec rm {} \;

.include <bsd.port.mk>
