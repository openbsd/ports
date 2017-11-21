# $OpenBSD: Makefile,v 1.21 2017/11/21 00:12:59 naddy Exp $

COMMENT=	CAD program for designing model railroad layouts

VERSION=	4.3.0
DISTNAME=	xtrkcad-source-${VERSION}
PKGNAME=	xtrkcad-${VERSION}
CATEGORIES=	cad
REVISION=	0

HOMEPAGE=	http://www.xtrkcad.org/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl javascriptcoregtk-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread soup-2.4 webkitgtk-1.0 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xtrkcad-fork/}

MODULES=	devel/cmake


BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	www/webkit>=1.4.0v0

CONFIGURE_ENV+=	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L${PREFIX}/lib -liconv -lintl"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/app/lib/CMakeLists.txt

.include <bsd.port.mk>
