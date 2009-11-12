# $OpenBSD: Makefile,v 1.25 2009/11/12 10:07:39 ajacoutot Exp $

COMMENT=	simple GTK+ text editor

DISTNAME=	leafpad-0.8.17
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors x11

HOMEPAGE=	http://tarot.freeshell.org/leafpad/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=leafpad/}

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread-stubs xcb z

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	gtk-x11-2.0.>=1000,gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leafpad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/leafpad/

.include <bsd.port.mk>
