VERSION =		0.8.0
USE_LUAJIT =		No
REVISION =		16

WANTLIB += ${COMPILER_LIBCXX} GL IL Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += OpenEXR-3_2 OpenEXRCore-3_2 OpenEXRUtil-3_2 SDL X11
WANTLIB += X11-xcb Xau Xdmcp Xext Xfixes Xxf86vm c drm expat freetype
WANTLIB += glapi iconv jasper jpeg lcms lzma m mng modplug mpg123
WANTLIB += ogg openal physfs png sndio tiff usbhid vorbis vorbisfile
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-shm xcb-sync
WANTLIB += xcb-xfixes xshmfence z zstd xcb-randr

LIB_DEPENDS =		audio/libmodplug \
			audio/mpg123 \
			audio/openal \
			audio/libvorbis \
			converters/libiconv \
			devel/physfs \
			devel/sdl \
			graphics/DevIL \
			graphics/tiff

CPPFLAGS +=		-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/SDL/ \
			-I${X11BASE}/include/ \
			-I${X11BASE}/include/freetype2 \
			`pkg-config --cflags ${MODLUA_DEP}`

LDFLAGS +=		-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

FIX_CRLF_FILES =	src/libraries/Box2D/Collision/Shapes/b2ChainShape.h \
			src/modules/graphics/opengl/GLee.h

post-extract:
# Add missing newlines
	cd ${WRKSRC} && \
		for i in `find . -type f`; \
			do [ "$(tail -c1 $i)" = "$(printf '\n')" ] || ls -l $i; \
		done

.include <bsd.port.mk>
