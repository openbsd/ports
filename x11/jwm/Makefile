# $OpenBSD: Makefile,v 1.18 2015/06/29 07:16:05 ajacoutot Exp $

COMMENT=		Joe's Window Manager

DISTNAME=		jwm-2.3.1

CATEGORIES=		x11

HOMEPAGE=		http://www.joewing.net/projects/jwm/index.shtml

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xinerama Xmu Xpm Xrender c cairo freetype
WANTLIB += fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += jpeg m png pthread rsvg-2 z

MASTER_SITES=		http://www.joewing.net/projects/jwm/releases/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/gettext

LIB_DEPENDS=		devel/fribidi \
			devel/glib2 \
			x11/gnome/librsvg

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/jwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jwm
	${INSTALL_DATA} ${WRKSRC}/example.jwmrc \
		${PREFIX}/share/examples/jwm/system.jwmrc

.include <bsd.port.mk>
