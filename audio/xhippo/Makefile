# $OpenBSD: Makefile,v 1.39 2013/11/09 23:19:01 naddy Exp $

COMMENT=	generic playlist manager for UNIX

DISTNAME=	xhippo-3.5
CATEGORIES=	audio
REVISION =	2

HOMEPAGE=	https://www.gnu.org/software/xhippo/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gthread-2.0 pthread xcb-render
WANTLIB += id3tag>=2 gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL xcb-shm

MASTER_SITES=	${MASTER_SITE_GNU:=xhippo/}

LIB_DEPENDS=	x11/gtk+2 \
		audio/libid3tag

USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-gtk2
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xhippo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xhippo
	${INSTALL_DATA} ${WRKSRC}/xhippo.config \
		${PREFIX}/share/examples/xhippo/xhippo.config-sample

.include <bsd.port.mk>
