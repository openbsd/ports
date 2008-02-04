# $OpenBSD: Makefile,v 1.35 2008/02/04 17:55:18 jasper Exp $

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.20.0
SHARED_LIBS +=	rsvg-2         20.0           # .22.0
CATEGORIES=	devel
PKGNAME=	${DISTNAME}p0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre png pthread xml2 z

MODULES=	devel/gettext x11/gnome

LIB_DEPENDS=	gdk-x11-2.0.>=1200,gdk_pixbuf-2.0.>=1200,gtk-x11-2.0.>=1200::x11/gtk+2 \
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
CONFIGURE_ARGS+=--disable-gnome-print \
		--disable-gnome-vfs
LIB_DEPENDS+=	gsf-1::devel/libgsf,no_gnome
.else
LIB_DEPENDS+=	gailutil.>=20::x11/gnome/gail \
		gnomevfs-2.>=1800::x11/gnome/vfs2 \
		gnomeprintui-2-2.>=2::x11/gnome/libgnomeprintui \
		gsf-1::devel/libgsf
WANTLIB+=	crypto ssl util ORBit-2 art_lgpl_2 dbus-1 dbus-glib-1 \
		gconf-2 gnomecanvas-2 gnomeprint-2-2
.endif

.include <bsd.port.mk>
