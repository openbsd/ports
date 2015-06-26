# $OpenBSD: Makefile,v 1.28 2015/06/26 17:25:42 ajacoutot Exp $

COMMENT=	change background image with GkrellM2

DISTNAME=	gkrellmbgchg2-0.1.11
CATEGORIES=	x11

HOMEPAGE=	http://www.bender-suhl.de/stefan/english/comp/gkrellmbgchg.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=	http://www.bender-suhl.de/stefan/comp/sources/ \
		http://www.bender-suhl.de/stefan/comp/sources/old/

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2

PLUGIN=		${WRKSRC}/gkrellmbgchg.so

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
