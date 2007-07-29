# $OpenBSD: Makefile,v 1.1.1.1 2007/07/29 18:47:29 kili Exp $

COMMENT=		X11 program launcher

DISTNAME=		gmrun-0.9

CATEGORIES=		x11

HOMEPAGE=		http://www.bazon.net/mishoo/gmrun.epl

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
			Xrandr Xrender atk-1.0 c cairo expat fontconfig \
			freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
			m pango-1.0 pangocairo-1.0 pangoft2-1.0 png stdc++ z

MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gmrun/}

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
