# $OpenBSD: Makefile,v 1.15 2015/09/22 18:47:52 pascal Exp $

COMMENT=		2D games framework for use with Lua

V=			0.8.0
DISTNAME=		love-$V-linux-src
PKGNAME=		love-$V
REVISION=		6

HOMEPAGE=		http://love2d.org/

CATEGORIES=		games lang/lua

# code: zlib license
# docs: freebsd license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += GL Half IL Iex IexMath IlmImf IlmThread Imath SDL X11
WANTLIB += X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xxf86vm c drm
WANTLIB += freetype glapi jasper jpeg lcms m mng modplug mpg123
WANTLIB += ogg openal physfs png pthread pthread-stubs sndio stdc++
WANTLIB += tiff usbhid vorbis vorbisfile xcb xcb-dri2 xcb-glx
WANTLIB += z

MASTER_SITES=		https://bitbucket.org/rude/love/downloads/

MODULES=		converters/libiconv \
			lang/lua

LIB_DEPENDS=		audio/libmodplug \
			audio/mpg123 \
			audio/openal \
			audio/libvorbis \
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

WRKDIST=		${WRKDIR}/love-$V/

post-extract:
# Add missing newlines
	cd ${WRKSRC} && \
		for i in `find . -type f`; \
			do [ "$(tail -c1 $i)" == "$(printf '\n')" ] || ls -l $i; \
		done

.include <bsd.port.mk>
