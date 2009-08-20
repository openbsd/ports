# $OpenBSD: Makefile,v 1.1.1.1 2009/08/20 19:25:40 landry Exp $

COMMENT =	GTK+2 engine from Fedora

VERSION =	0.7.2
DISTNAME =	gtk-nodoka-engine-${VERSION}
PKGNAME =	gtk2-nodoka-engine-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	https://fedorahosted.org/nodoka/wiki

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://fedorahosted.org/releases/n/o/nodoka/

SHARED_ONLY =	Yes
USE_LIBTOOL =	Yes
USE_X11 =	Yes

MODULES =	devel/gettext
LIBTOOL_FLAGS+=	--tag=disable-static
LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-animation

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtk2-nodoka-engine
	${INSTALL_DATA} ${WRKSRC}/README  ${PREFIX}/share/doc/gtk2-nodoka-engine/

.include <bsd.port.mk>
