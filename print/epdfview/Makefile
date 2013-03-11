# $OpenBSD: Makefile,v 1.29 2013/03/11 11:37:53 espie Exp $

COMMENT=	lightweight PDF document viewer

DISTNAME=	epdfview-0.1.8
REVISION=	4
CATEGORIES=	print
HOMEPAGE=	http://trac.emma-soft.com/epdfview/

MAINTAINER=	Brynet <brynet@gmail.com>

MASTER_SITES=	${HOMEPAGE}chrome/site/releases/

EXTRACT_SUFX=	.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender asn1 atk-1.0 c cairo crypto cups expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += krb5 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png poppler-glib pthread pthread-stubs ssl stdc++ xcb
WANTLIB += xcb-render xcb-shm z

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
