# $OpenBSD: Makefile,v 1.11 2013/07/01 17:00:40 dcoppa Exp $

COMMENT=	CAD program for designing model railroad layouts

VERSION=	4.2.0-beta1
DISTNAME=	xtrkcad-source-${VERSION}
PKGNAME=	xtrkcad-${VERSION:S/-beta1/b1/}
CATEGORIES=	cad

HOMEPAGE=	http://www.xtrkcad.org/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xtrkcad-fork/}

MODULES=	devel/cmake devel/gettext

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig
WANTLIB += freetype m pixman-1 pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z cairo png webkitgtk-1.0 soup-2.4
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 javascriptcoregtk-1.0
WANTLIB += atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0

LIB_DEPENDS=	www/webkit>=1.4.0v0

WRKDIST =	${WRKDIR}/xtrkcad-${VERSION}

CONFIGURE_STYLE=cmake
CONFIGURE_ENV+=	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L${PREFIX}/lib -liconv -lintl"

.include <bsd.port.mk>
