# $OpenBSD: Makefile,v 1.3 2007/05/03 17:42:55 ajacoutot Exp $

COMMENT=	"educational game for children"

DISTNAME=	gcompris-8.3.1
CATEGORIES=	games education

HOMEPAGE=	http://gcompris.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gcompris/}

WANTLIB=	Xau Xdmcp SDL X11 Xext Xrender atk-1.0 c cairo smpeg z \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 xml2 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m mikmod ogg pango-1.0 pangocairo-1.0 util \
		pangoft2-1.0 png pthread usbhid vorbis vorbisfile \
		art_lgpl_2 Xxf86vm expat Xcursor Xfixes Xi Xinerama Xrandr

MODULES=	devel/gettext lang/python

BUILD_DEPENDS=	::textproc/texi2html \
		::x11/py-gtk2 \
		::textproc/intltool \
		::games/gnuchess
LIB_DEPENDS=	python${MODPY_VERSION}::lang/python/${MODPY_VERSION} \
		SDL_mixer.>=3::devel/sdl-mixer \
		gnet-2.0::net/gnet \
		sqlite3::databases/sqlite3 \
		gnomecanvas-2::x11/gnome/libgnomecanvas
RUN_DEPENDS=	::games/gnuchess \
		::databases/py-sqlite2 \
		::x11/py-gtk2 \
		::games/tuxpaint \
		::cad/gnucap

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--enable-xf86vidmode \
		--enable-sqlite \
		--enable-gnet \
		--enable-py-build-only \
		--disable-cairo \
		--disable-rpath \
		--with-x \
		--with-python=${MODPY_BIN}

pre-configure:
	@perl -pi -e 's,\@INTLTOOL_MERGE\@,${LOCALBASE}/bin/intltool-merge,g;' \
		-e 's,\@INTLTOOL_UPDATE\@,${LOCALBASE}/bin/intltool-update,g;' \
		-e 's,\@INTLTOOL_EXTRACT\@,${LOCALBASE}/bin/intltool-extract,g' \
		${WRKSRC}/Makefile.in ${WRKSRC}/po/Makefile.in.in

post-install:
	find ${PREFIX}/share/gcompris -type f -perm 755 -exec chmod 644 {} \;
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gcompris

.include <bsd.port.mk>
