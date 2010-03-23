# $OpenBSD: Makefile,v 1.17 2010/03/23 20:38:20 jasper Exp $

COMMENT=	graphical reverse polish notation calculator

DISTNAME=	grpn-1.1.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	math x11

HOMEPAGE=	http://lashwhip.com/grpn.html

MASTER_SITES=	http://lashwhip.com/grpn/ \
		ftp://lashwhip.com/pub/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

MAKE_FLAGS=	CC="${CC}"
ALL_TARGET=
USE_X11=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grpn ${PREFIX}/bin

.include <bsd.port.mk>
