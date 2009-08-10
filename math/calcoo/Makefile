# $OpenBSD: Makefile,v 1.33 2009/08/10 06:32:43 kili Exp $

COMMENT=	RPN and algebraic scientific calculator

DISTNAME=	calcoo-1.3.18
PKGNAME=	${DISTNAME}p3
CATEGORIES=	math
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calcoo/}

MODULES=	devel/gettext
LIB_DEPENDS=	gdk_pixbuf-2.0.>=1000,gdk-x11-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

USE_X11=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
