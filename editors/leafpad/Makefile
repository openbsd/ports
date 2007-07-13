# $OpenBSD: Makefile,v 1.13 2007/07/13 08:54:48 ajacoutot Exp $

COMMENT=	simple GTK+ text editor

DISTNAME=	leafpad-0.8.11
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors x11

HOMEPAGE=	http://tarot.freeshell.org/leafpad/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://savannah.nongnu.org/download/leafpad/

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png z

MODULES=	devel/gettext

LIB_DEPENDS=	gtk-x11-2.0.>=1000,gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leafpad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/leafpad/

.include <bsd.port.mk>
