# $OpenBSD: Makefile,v 1.30 2013/06/17 19:28:37 ajacoutot Exp $

COMMENT=	lightweight PDF document viewer

DISTNAME=	epdfview-0.1.8
REVISION=	5
CATEGORIES=	print
HOMEPAGE=	http://trac.emma-soft.com/epdfview/

MAINTAINER=	Brynet <brynet@gmail.com>

MASTER_SITES=	${HOMEPAGE}chrome/site/releases/

EXTRACT_SUFX=	.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo cups fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 poppler-glib pthread stdc++ z

MODULES=	devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	x11/gtk+2 \
		print/cups,-libs \
		print/poppler>=0.16

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-cups

USE_GMAKE=	Yes

ICONDIR=$(PREFIX)/share/icons/hicolor

post-install:
	${INSTALL_DATA_DIR} ${ICONDIR}/{24x24,32x32,48x48}/apps
	for i in 24 32 48; do \
		${INSTALL_DATA} ${WRKSRC}/data/icon_epdfview-$${i}.png \
		  ${ICONDIR}/$${i}x$${i}/apps/epdfview.png; \
	done

.include <bsd.port.mk>
