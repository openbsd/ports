# $OpenBSD: Makefile,v 1.30 2021/08/31 07:30:29 ajacoutot Exp $

COMMENT=		2D games framework for use with Lua

V=			0.8.0
DISTNAME=		love-$V-linux-src
PKGNAME=		love-$V
REVISION=		13

HOMEPAGE=		https://love2d.org/

CATEGORIES=		games lang/lua

# code: zlib license
# docs: freebsd license
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODLUA_WANTLIB} ${COMPILER_LIBCXX}
WANTLIB += GL IL Iex-3_1 IlmThread-3_1 Imath-3_1 OpenEXR-3_1 OpenEXRCore-3_1
WANTLIB += OpenEXRUtil-3_1 SDL X11 X11-xcb Xau Xdmcp Xext Xfixes
WANTLIB += Xxf86vm c drm expat freetype glapi iconv jasper jpeg
WANTLIB += lcms lzma m mng modplug mpg123 ogg openal physfs png
WANTLIB += sndio tiff usbhid vorbis vorbisfile xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-shm xcb-sync xcb-xfixes xshmfence
WANTLIB += z zstd

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://bitbucket.org/rude/love/downloads/

MODULES=		lang/lua

LIB_DEPENDS=		audio/libmodplug \
			audio/mpg123 \
			audio/openal \
			audio/libvorbis \
			converters/libiconv \
			devel/physfs \
			devel/sdl \
			graphics/DevIL \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL/ \
				-I${X11BASE}/include/ -I${X11BASE}/include/freetype2 \
				`pkg-config --cflags ${MODLUA_DEP}`" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread"

WRKDIST=		${WRKDIR}/love-$V

FIX_CRLF_FILES=		src/libraries/Box2D/Collision/Shapes/b2ChainShape.h \
			src/modules/graphics/opengl/GLee.h

post-extract:
# Add missing newlines
	cd ${WRKSRC} && \
		for i in `find . -type f`; \
			do [ "$(tail -c1 $i)" == "$(printf '\n')" ] || ls -l $i; \
		done

.include <bsd.port.mk>
