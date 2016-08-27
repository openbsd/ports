# $OpenBSD: Makefile,v 1.21 2016/08/27 18:04:44 jca Exp $

COMMENT=		drop-down terminal emulator

DISTNAME=		tilda-0.9.6
REVISION=		9
CATEGORIES=		x11

HOMEPAGE=		http://tilda.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tilda/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo confuse fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv intl pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread vte xml2 z

RUN_DEPENDS=		devel/desktop-file-utils
LIB_DEPENDS=		devel/gettext \
			devel/libconfuse \
			devel/libglade2 \
			devel/vte

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tilda
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tilda

.include <bsd.port.mk>
