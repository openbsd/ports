# $OpenBSD: Makefile,v 1.13 2013/08/07 21:57:55 naddy Exp $

COMMENT=		2D games framework for use with Lua

V=			0.8.0
DISTNAME=		love-$V-linux-src
PKGNAME=		love-$V
REVISION=		4

HOMEPAGE=		http://love2d.org/

CATEGORIES=		games lang/lua

# code: zlib license
# docs: freebsd license
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://bitbucket.org/rude/love/downloads/

MODULES=		converters/libiconv \
			lang/lua

WANTLIB += GL Half IL Iex IlmImf IlmThread Imath SDL X11 Xdamage
WANTLIB += Xext Xfixes Xxf86vm c drm freetype jasper jpeg lcms
WANTLIB += ltdl ${MODLUA_WANTLIB} m modplug mpg123 ogg openal physfs
WANTLIB += png pthread sndio stdc++ tiff usbhid vorbis vorbisfile
WANTLIB += xcb z mng

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
