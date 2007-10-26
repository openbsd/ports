# $OpenBSD: Makefile,v 1.30 2007/10/26 15:41:19 ajacoutot Exp $

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.18.1
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	rsvg-2         19.0           # .20.1
CATEGORIES=	devel

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png pthread xml2 z pcre

MODULES=	devel/gettext x11/gnome

LIB_DEPENDS=	gdk-x11-2.0.>=1200,gdk_pixbuf-2.0.>=1200,gtk-x11-2.0.>=1200::x11/gtk+2 \
		gsf-1::devel/libgsf,-main \
		croco-0.6.>=3::www/libcroco

USE_X11=		Yes
CONFIGURE_ARGS+=	--with-svgz \
			--with-croco \
			--enable-gtk-theme \
			--disable-gtk-doc \
			--disable-mozilla-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	no_gnome
FLAVOR?=

.if ${FLAVOR:L:Mno_gnome}
CONFIGURE_ARGS+=--disable-pixbuf-loader \
		--disable-gnome-print \
		--disable-gnome-vfs
.else
LIB_DEPENDS+=	gnomevfs-2.>=1800::x11/gnome/vfs2 \
		gnomeprintui-2-2.>=2::x11/gnome/libgnomeprintui
WANTLIB+=	crypto ssl util ORBit-2 art_lgpl_2 dbus-1 dbus-glib-1 \
		gconf-2 gnomecanvas-2 gnomeprint-2-2
.endif

.include <bsd.port.mk>
