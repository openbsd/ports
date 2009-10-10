# $OpenBSD: Makefile,v 1.72 2009/10/10 09:51:52 ajacoutot Exp $

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	2.6.8
MAJORVER=	${VERSION:C/..$//}
DISTNAME=	abiword-${VERSION}
CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	fribidi::devel/fribidi \
		popt::devel/popt \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0,gailutil::x11/gtk+2 \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui \
		wmf.>=8,wmflite,wv::converters/wv \
		enchant.>=5::textproc/enchant

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xft Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += c cairo expat fontconfig freetype gio-2.0 glade-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnomecanvas-2 gnomeprint-2-2
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pixman-1 png pthread stdc++
WANTLIB += xml2 z pthread-stubs xcb gio-2.0 gsf-1 jpeg

MASTER_SITES=   ${HOMEPAGE}/downloads/abiword/${VERSION}/source/

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-printing
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DMAXSTRINGCHARS=512" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	gnomeui-2::x11/gnome/libgnomeui \
		gsf-gnome-1.>=114:libgsf-gnome-*:devel/libgsf,-gnome
WANTLIB+=	ORBit-2 bonobo-2 bonobo-activation bonoboui-2 \
		gconf-2 gnome-2 gnomeui-2 gnomevfs-2 dbus-1 gnome-keyring
CONFIGURE_ARGS+= --enable-gnomevfs \
		--enable-gnomeui \
		--enable-gucharmap
.else
CONFIGURE_ARGS+= --disable-gnomevfs \
		--disable-gnomeui \
		--disable-gucharmap
.endif

MAKE_FILE=	GNUmakefile

SUBST_VARS=	MAJORVER

pre-configure:
	@perl -pi -e "s|libpng12|libpng|g" ${WRKSRC}/configure

.include <bsd.port.mk>
