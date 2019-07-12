# $OpenBSD: Makefile,v 1.30 2019/07/12 20:47:41 sthen Exp $

COMMENT=	graphical reverse polish notation calculator

DISTNAME=	grpn-1.1.2
REVISION=	9
CATEGORIES=	math x11

HOMEPAGE=	http://lashwhip.com/grpn.html

MASTER_SITES=	http://lashwhip.com/grpn/ \
		ftp://lashwhip.com/pub/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z


LIB_DEPENDS=	x11/gtk+2

MAKE_FLAGS=	CC="${CC}"
ALL_TARGET=
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grpn ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/grpn.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
