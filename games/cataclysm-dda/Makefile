COMMENT=		rogue-like zombie survival game
CATEGORIES=		games

V=			0.I
DIST_TUPLE+=		github CleverRaven Cataclysm-DDA ${V} .
PKGNAME=		cataclysm-dda-${V:S/-RELEASE//}
REVISION=		0

HOMEPAGE=		https://cataclysmdda.org
MAINTAINER=		Kirill Bychkov <kirby@openbsd.org>

EPOCH=			0

# Creative Commons 3.0
PERMIT_PACKAGE=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB += ${COMPILER_LIBCXX} FLAC c iconv intl m z

# C++17
COMPILER=		base-clang ports-gcc

MODULES=		devel/cmake textproc/intltool

BUILD_DEPENDS =		devel/abseil-cpp

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS=		audio/flac \
			devel/gettext,-runtime

CONFIGURE_ARGS = 	-DLOCALIZE=ON \
			-DBACKTRACE=OFF \
			-DGIT_VERSION=${V} \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DCMAKE_INSTALL_LOCALEDIR="${PREFIX}/share/locale" \
			-Wno_dev

CXXFLAGS += 		-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS += 		-I${X11BASE}/include/freetype2
CXXFLAGS += 		-DCATCH_CONFIG_NO_COUNTER

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib -L${X11BASE}/lib -lintl -liconv

SUBST_VARS += 		V

.if ${FLAVOR:Mno_x11}
WANTLIB+=		curses form
CONFIGURE_ARGS += 	-DCURSES_INCLUDE_PATH=/usr/include
.else
WANTLIB+=		SDL2 SDL2_image SDL2_mixer SDL2_ttf freetype

LIB_DEPENDS+=		devel/sdl2-mixer \
			devel/sdl2-image \
			devel/sdl2-ttf

CONFIGURE_ARGS+=       -DCURSES=OFF -DTILES=ON -DSOUND=ON

# The use of ccache(1) is managed by the ports infrastructure
CONFIGURE_ARGS +=	-DCATA_CCACHE=OFF

MAN_TILES=		-tiles
.endif

NO_TEST=		Yes

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

post-extract:
	mv ${WRKSRC}/src/third-party/flatbuffers/ \
		${WRKSRC}/src/third-party/flatbuffers_int/

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/version.cmake \
		${WRKSRC}/data/fontdata.json
	perl -pi -e 's,flatbuffers/,flatbuffers_int/,g' \
		${WRKSRC}/src/third-party/CMakeLists.txt \
		${WRKSRC}/src/third-party/flatbuffers_int/*.h \
		${WRKSRC}/src/third-party/flatbuffers_int/*.cpp \
		${WRKSRC}/src/third-party/flatbuffers_int/pch/*.h \
		${WRKSRC}/src/main.cpp \
		${WRKSRC}/src/flexbuffer_cache.* \
		${WRKSRC}/src/flexbuffer_json-inl.h \
		${WRKSRC}/src/flexbuffer_json.h \
		${WRKSRC}/pch/main-pch.hpp \
		${WRKSRC}/src/zzip.cpp

post-configure:
	touch ${WRKSRC}/VERSION.txt
	echo '#define VERSION "${V}"' > ${WRKSRC}/src/version.h

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cataclysm${MAN_TILES}.6 ${PREFIX}/man/man6/
	cd ${WRKSRC}/doc && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/cataclysm-dda/doc/{}" \;
	cd ${WRKSRC}/doc && find * -type f -mindepth 1 ! -name "*.6" -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/cataclysm-dda/doc/{}" \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/metainfo/
	${INSTALL_DATA} ${WRKSRC}/data/xdg/org.cataclysmdda.CataclysmDDA.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/data/xdg/org.cataclysmdda.CataclysmDDA.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/data/xdg/org.cataclysmdda.CataclysmDDA.appdata.xml \
		${PREFIX}/share/metainfo/

.include <bsd.port.mk>
