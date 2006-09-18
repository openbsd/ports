# $OpenBSD: Makefile,v 1.15 2006/09/18 12:19:40 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		"collection of theme engines for GTK+2"

VERSION=		2.6.5
DISTNAME=		gtk-engines-${VERSION}
PKGNAME=		gtk-engines2-${VERSION}p2
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xrender atk-1.0 fontconfig m z png \
		freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo glitz

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-engines/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.>=600.0,gdk_pixbuf-2.0.>=600.0,gtk-x11-2.0.>=600.0::x11/gtk+2
RUN_DEPENDS=		:hicolor-icon-theme-*:x11/hicolor-icon-theme

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
