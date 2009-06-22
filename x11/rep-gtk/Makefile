# $OpenBSD: Makefile,v 1.31 2009/06/22 17:00:24 naddy Exp $

COMMENT=	GTK+ binding for librep Lisp environment

VERSION=	0.18
DISTNAME=	rep-gtk-${VERSION}
PKGNAME=	${DISTNAME}p15
CATEGORIES=     x11

HOMEPAGE=       http://rep-gtk.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=rep-gtk/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/librep
LIB_DEPENDS= 	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=	devel/gettext

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OPSYS_VER}
SUBST_VARS=     GNU_ARCH VERSION

USE_X11=	Yes
USE_GMAKE=      Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gnome --without-libglade

NO_REGRESS=	Yes

.include <bsd.port.mk>
