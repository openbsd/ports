# $OpenBSD: Makefile,v 1.1.1.1 2006/09/21 15:48:10 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	"flash player with firefox browser plugin"
DISTNAME=	gnash-20060919
.for _lib in gnashasobjs gnashbackend gnashbase gnashgeo gnashserver \
	gnashamf gnashgui gnashplugin
SHARED_LIBS+= ${_lib} 0.0
.endfor
CATEGORIES=	www
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

HOMEPAGE=	http://www.gnu.org/software/gnash/

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

LIBTOOL_FLAGS+=	--tag=disable-static
MODULES=	gettext
NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes

LIB_DEPENDS+=	atk-1.0.>=1011::devel/atk \
		SDL_mixer.>=3::devel/sdl-mixer \
		curl.>=4::net/curl \
		xml2.>=9.0::textproc/libxml \
		gtkglext-x11-1.0.>=0,gdkglext-x11-1.0.>=0::x11/gtkglext

WANTLIB=	GL GLU ICE SM X11 Xext Xmu Xrender Xt c crypto fontconfig \
		freetype m pthread ssl stdc++ usbhid z \
		SDL cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 jpeg mikmod ogg \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0 png smpeg \
		vorbis vorbisfile

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--enable-plugin \
		--enable-sound=SDL \
		--with-plugindir=${LOCALBASE}/lib/mozilla-plugins \
		--without-arts

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
