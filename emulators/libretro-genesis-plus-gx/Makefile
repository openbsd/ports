COMMENT =	Sega Genesis core for retroarch

DISTNAME =	libretro-genesis-plus-gx-1.7.5pl20201208

GH_ACCOUNT =	ekeeke
GH_PROJECT =	Genesis-Plus-GX
GH_COMMIT =	58758aef3d8e12189899d67344db3b95c6379561

CATEGORIES =	emulators

HOMEPAGE =	https://bitbucket.org/eke/genesis-plus-gx

# Noncommercial redistribution and modification explicitly allowed: LICENSE.txt
PERMIT_PACKAGE =	Yes

WANTLIB += m

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -fPIC"

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		Makefile.libretro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/genesis_plus_gx_libretro.so \
		${PREFIX}/lib/libretro
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libretro-genesis-plus-gx
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt \
		${PREFIX}/share/doc/libretro-genesis-plus-gx

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
