# $OpenBSD: Makefile,v 1.11 2004/12/15 13:57:57 alek Exp $

COMMENT=		"themes collection for GNOME"

DISTNAME=		gnome-themes-2.8.2
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-themes/2.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 m \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0

MODULES=		devel/gettext

BUILD_DEPENDS=		${RUN_DEPENDS} \
			:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:gtk-engines2->=2.2.0:x11/gtk-engines2
LIB_DEPENDS= 		gnomeui-2.0::x11/gnome/libgnomeui

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
