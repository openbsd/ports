# $OpenBSD: Makefile,v 1.6 2009/08/11 08:42:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	lightweight NETWM compliant desktop panel

DISTNAME=	fbpanel-4.12
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://fbpanel.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fbpanel/}

MODULES=	devel/gettext

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAKE_FLAGS=	CHATTY=1 CPPFLAGS="${CFLAGS}"
FAKE_FLAGS=	PREFIX=${DESTDIR}${PREFIX}

CONFIGURE_STYLE=simple dest old
CONFIGURE_ARGS=	--cpu=off --prefix=${TRUEPREFIX}

LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000,gdk_pixbuf_xlib-2.0.>=1000::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread z pthread-stubs xcb

.include <bsd.port.mk>
