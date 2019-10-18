# $OpenBSD: Makefile,v 1.25 2019/10/18 15:11:09 cwen Exp $

COMMENT=		2D games framework for use with Lua

V=			0.8.0
DISTNAME=		love-$V-linux-src
PKGNAME=		love-$V
REVISION=		10

HOMEPAGE=		https://love2d.org/

CATEGORIES=		games lang/lua

# code: zlib license
# docs: freebsd license
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += GL Half IL Iex IexMath IlmImf IlmThread Imath SDL X11
WANTLIB += X11-xcb Xdamage Xext Xfixes Xxf86vm c drm
WANTLIB += freetype glapi iconv jasper jpeg lcms m mng modplug mpg123
WANTLIB += ogg openal physfs png pthread sndio ${COMPILER_LIBCXX}
WANTLIB += tiff usbhid vorbis vorbisfile xcb xcb-dri2 xcb-glx
WANTLIB += z expat

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
			graphics/ilmbase \
			graphics/openexr \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL/ \
				-I${X11BASE}/include/ -I${X11BASE}/include/freetype2 \
				`pkg-config --cflags ${MODLUA_DEP}`" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread"

WRKDIST=		${WRKDIR}/love-$V

post-extract:
# Add missing newlines
	cd ${WRKSRC} && \
		for i in `find . -type f`; \
			do [ "$(tail -c1 $i)" == "$(printf '\n')" ] || ls -l $i; \
		done
# And some files have MS-DOS line endings we don't want for patches
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' \
		./src/libraries/Box2D/Collision/Shapes/b2ChainShape.h

.include <bsd.port.mk>
