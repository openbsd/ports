# $OpenBSD: Makefile,v 1.20 2007/02/11 00:56:58 steven Exp $

SHARED_ONLY=		Yes

COMMENT=		"collection of theme engines for GTK+2"

V=			2.8.2
DISTNAME=		gtk-engines-${V}
PKGNAME=		gtk-engines2-${V}p1
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xrender atk-1.0 fontconfig m z png \
		freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo glitz

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-engines/2.8/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		gdk-x11-2.0.>=600,gdk_pixbuf-2.0.>=600,gtk-x11-2.0.>=600::x11/gtk+2
RUN_DEPENDS=		:hicolor-icon-theme-*:x11/hicolor-icon-theme

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
