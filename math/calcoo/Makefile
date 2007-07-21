# $OpenBSD: Makefile,v 1.28 2007/07/21 15:20:54 naddy Exp $

COMMENT=	RPN and algebraic scientific calculator

DISTNAME=	calcoo-1.3.17
CATEGORIES=	math
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calcoo/}

MODULES=	devel/gettext
LIB_DEPENDS=	gdk_pixbuf-2.0.>=1000,gdk-x11-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png z

USE_X11=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
