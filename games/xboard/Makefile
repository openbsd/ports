# $OpenBSD: Makefile,v 1.32 2014/01/28 09:20:12 dcoppa Exp $

COMMENT=	X11 frontend for GNU Chess and the Internet Chess Server

DISTNAME=	xboard-4.7.3
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}

HOMEPAGE=	https://www.gnu.org/software/xboard/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xaw Xmu Xpm Xt c cairo \
			gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
			gobject-2.0 m pthread rsvg-2

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/xdg-utils

LIB_DEPENDS=		graphics/cairo \
			x11/gnome/librsvg

RUN_DEPENDS=		games/gnuchess \
			devel/desktop-file-utils \
			devel/xdg-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/xboard/"

USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/cmail ${PREFIX}/bin/

.include <bsd.port.mk>
