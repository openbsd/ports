# $OpenBSD: Makefile,v 1.3 2007/12/23 11:08:16 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	lightweight NETWM compliant desktop panel

DISTNAME=	fbpanel-4.12
CATEGORIES=	x11
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://fbpanel.sourceforge.net/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

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

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xmu Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread z

.include <bsd.port.mk>
