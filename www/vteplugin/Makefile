# $OpenBSD: Makefile,v 1.12 2010/12/29 07:33:08 ajacoutot Exp $

COMMENT =	npapi vte-based terminal for web browsers

DISTNAME =	vteplugin-0.1
REVISION =	5
CATEGORIES =	www x11

# WTFPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += vte gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL Xxf86vm drm gthread-2.0 xcb-render xcb-shm

EXTRACT_SUFX=.tar.bz2

MASTER_SITES =	http://blog.renevier.net/public/
MODULES =	devel/gettext \
		devel/waf

LIB_DEPENDS =	x11/gtk+2 \
		devel/vte

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wscript

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vteplugin
	${INSTALL_DATA} ${WRKSRC}/vteplugin.html ${PREFIX}/share/vteplugin/vteplugin.html

.include <bsd.port.mk>
