# $OpenBSD: Makefile,v 1.41 2019/07/12 20:46:27 sthen Exp $

COMMENT=	X11 frontend for GNU Chess and the Internet Chess Server

DISTNAME=	xboard-4.9.1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}
REVISION=	3

HOMEPAGE=	https://www.gnu.org/software/xboard/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread rsvg-2 z

BUILD_DEPENDS=		devel/xdg-utils

LIB_DEPENDS=		graphics/cairo \
			x11/gtk+2 \
			x11/gnome/librsvg

RUN_DEPENDS=		games/gnuchess \
			devel/desktop-file-utils \
			devel/xdg-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/xboard/"

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/cmail ${PREFIX}/bin/

.include <bsd.port.mk>
