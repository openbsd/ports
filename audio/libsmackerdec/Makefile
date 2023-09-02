COMMENT =	decoder for smacker audio files
V =		0.0.20220625
DISTNAME =	${GH_PROJECT}-${V}
CATEGORIES =	audio

SHARED_LIBS +=	smackerdec                0.0 # 0.0

GH_ACCOUNT =	diasurgical
GH_PROJECT =	libsmackerdec
GH_COMMIT =	91e732bb6953489077430572f43fc802bf2c75b2

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} m SDL2

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2

post-patch:
	cp ${FILESDIR}/CMakeLists.txt ${WRKSRC}/

.include <bsd.port.mk>
