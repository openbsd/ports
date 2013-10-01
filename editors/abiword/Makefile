# $OpenBSD: Makefile,v 1.92 2013/10/01 09:07:18 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	2.8.6
MAJORVER=	${VERSION:C/..$//}
DISTNAME=	abiword-${VERSION}

REVISION=	7

# Merge a patch from Fedora to change default font from Times Roman to
# DejaVu Serif.: fixes font corruption issue on machines where
# msttcorefonts are not installed.
PATCHFILES=	abiword-dejavu.patch:0
MASTER_SITES0=	https://distfiles.bsdfrog.org/

SHARED_LIBS +=	abiword-2.8 0.0 # .0.0

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MODULES=	devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/fribidi \
		converters/wv \
		textproc/enchant \
		x11/gnome/librsvg \
		x11/gtk+2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 c cairo
WANTLIB += croco-0.6 drm enchant expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0 gtk-x11-2.0
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rsvg-2 stdc++ wmf-0.2 wmflite-0.2
WANTLIB += wv-1.2 xcb xcb-render xcb-shm xml2 z
WANTLIB += harfbuzz

MASTER_SITES=   ${HOMEPAGE}/downloads/abiword/${VERSION}/source/

USE_GMAKE=	Yes
USE_GROFF=	Yes

# plugins/openxml.so
BUILD_DEPENDS=	devel/boost

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-templates \
		--enable-clipart \
		--enable-plugins=openxml \
		--disable-collab-backend-fake \
		--disable-collab-backend-telepathy \
		--disable-collab-record-always \
		--enable-collab-backend-xmpp \
		--enable-collab-backend-sugar \
		--without-goffice \
		--without-gnomevfs
# broken configure checks (i.e. "no" makes it think we want to enable them)
#		--disable-collab-backend-tcp
#		--disable-collab-backend-service

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=	MAJORVER

pre-configure:
	@perl -pi -e "s|libpng12|libpng|g" ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/abiword-${MAJORVER}/plugins/*.a
	rm ${PREFIX}/lib/abiword-${MAJORVER}/plugins/*.la

.include <bsd.port.mk>
