# $OpenBSD: Makefile,v 1.3 2006/04/09 17:16:11 pvalchev Exp $

COMMENT=	"simple GTK+ text editor"

DISTNAME=	leafpad-0.8.8
CATEGORIES=	editors x11

HOMEPAGE=	http://tarot.freeshell.org/leafpad/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://savannah.nongnu.org/download/leafpad/
WANTLIB=	Xrender c freetype Xft Xext fontconfig m X11 \
		pango-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0 \
		pangox-1.0.0.0 atk-1.0.0.0

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2

USE_X11=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leafpad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/leafpad/

.include <bsd.port.mk>
