# $OpenBSD: Makefile,v 1.16 2008/02/01 21:38:27 steven Exp $

COMMENT=		sample theme engines for GTK+ provided with GNOME

DISTNAME=		gtk-engines-0.12
PKGNAME=		${DISTNAME}p3
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-engines/0.12/}

LIB_DEPENDS=		gdk_imlib.>=19::graphics/imlib

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xi \
			gdk glib gmodule gtk jpeg m png tiff ungif z

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
