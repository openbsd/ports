# $OpenBSD: Makefile,v 1.21 2006/09/18 12:19:41 espie Exp $

COMMENT=	"GTK+ binding for librep Lisp environment"

VERSION=	0.18
DISTNAME=	rep-gtk-${VERSION}
PKGNAME=	${DISTNAME}p7
CATEGORIES=     x11

HOMEPAGE=       http://rep-gtk.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 fontconfig freetype m glib-2.0 cairo \
		gmodule-2.0 gobject-2.0 atk-1.0 pango-1.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=rep-gtk/}

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		${RUN_DEPENDS}
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
