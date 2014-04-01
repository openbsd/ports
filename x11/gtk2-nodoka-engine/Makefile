# $OpenBSD: Makefile,v 1.11 2014/04/01 14:52:10 ajacoutot Exp $

COMMENT =	GTK+2 engine from Fedora

VERSION =	0.7.5
DISTNAME =	gtk-nodoka-engine-${VERSION}
PKGNAME =	gtk2-nodoka-engine-${VERSION}
REVISION=	2

CATEGORIES =	x11

HOMEPAGE =	https://fedorahosted.org/nodoka/wiki

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z ffi stdc++

MASTER_SITES =	http://fedorahosted.org/releases/n/o/nodoka/

SHARED_ONLY =	Yes

MODULES =	devel/gettext
LIB_DEPENDS =	x11/gtk+2


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

# XXX gtk+3 support does not build yet
CONFIGURE_ARGS +=	--with-gtk=2.0

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtk2-nodoka-engine
	${INSTALL_DATA} ${WRKSRC}/README  ${PREFIX}/share/doc/gtk2-nodoka-engine/

.include <bsd.port.mk>
