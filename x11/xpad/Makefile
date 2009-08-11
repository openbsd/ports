# $OpenBSD: Makefile,v 1.18 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=	virtual sticky pad system

DISTNAME=	xpad-2.14
PKGNAME=	${DISTNAME:L}p3
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpad/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xpad.sourceforge.net/

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z pthread-stubs xcb

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
