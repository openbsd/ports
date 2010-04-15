# $OpenBSD: Makefile,v 1.9 2010/04/15 14:11:01 ajacoutot Exp $

COMMENT=	Japanese handwriting recognition

DISTNAME=	kanjipad-2.0.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	japanese

HOMEPAGE=	http://fishsoup.net/software/kanjipad/

# GPLv2
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=	devel/gettext
USE_X11=	Yes

MAKE_FLAGS=OPTIMIZE='${CFLAGS}' PREFIX=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kanjipad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kanjipad

.include <bsd.port.mk>
