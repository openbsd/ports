# $OpenBSD: Makefile,v 1.35 2009/08/11 08:42:08 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		collection of theme engines for GTK+2

GNOME_PROJECT=		gtk-engines
GNOME_VERSION=		2.18.2
PKGNAME=		gtk-engines2-${GNOME_VERSION}p0

CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png z pcre \
		pthread-stubs xcb

LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
RUN_DEPENDS=	:hicolor-icon-theme-*:x11/hicolor-icon-theme

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--disable-lua \
			--enable-animation
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	cd ${WRKBUILD}/po && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
			-f ${MAKE_FILE} ${FAKE_TARGET}

NO_REGRESS=	       Yes

.include <bsd.port.mk>
