# $OpenBSD: Makefile,v 1.36 2017/04/29 22:24:15 rsadowski Exp $

COMMENT=	X11 frontend for GNU Chess and the Internet Chess Server

DISTNAME=	xboard-4.9.1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}

HOMEPAGE=	https://www.gnu.org/software/xboard/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread rsvg-2 z

MODULES=		devel/gettext

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
