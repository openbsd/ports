# $OpenBSD: Makefile,v 1.13 2007/11/13 12:49:10 ajacoutot Exp $

COMMENT=	virtual sticky pad system

DISTNAME=	xpad-2.12
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpad/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xpad.sourceforge.net/

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		expat fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png z

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
