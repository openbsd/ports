# $OpenBSD: Makefile,v 1.6 2010/09/30 08:30:17 jasper Exp $

COMMENT =	npapi vte-based terminal for web browsers

DISTNAME =	vteplugin-0.1
REVISION =	3
CATEGORIES =	www x11

# WTFPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

EXTRACT_SUFX=.tar.bz2

MASTER_SITES =	http://blog.renevier.net/public/
MODULES =	devel/waf

USE_X11 =	Yes

LIB_DEPENDS =	gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
		vte::devel/vte

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb z gdk_pixbuf-2.0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wscript

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vteplugin
	${INSTALL_DATA} ${WRKSRC}/vteplugin.html ${PREFIX}/share/vteplugin/vteplugin.html

.include <bsd.port.mk>
