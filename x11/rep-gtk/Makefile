# $OpenBSD: Makefile,v 1.8 2002/10/29 19:48:58 naddy Exp $

COMMENT=	"GTK+ binding for librep Lisp environment"

VERSION=	0.15
DISTNAME=	rep-gtk-${VERSION}
CATEGORIES=     x11

HOMEPAGE=       http://rep-gtk.sourceforge.net/

MAINTAINER=	Robbie Gates <robbie@g7.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=rep-gtk/}

LIB_DEPENDS= 	gtk.1.2,gdk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		rep.10::lang/librep

SUBST_VARS=     OPSYS_VER VERSION

USE_X11=	Yes
USE_GMAKE=      Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gdk-pixbuf --without-gnome --without-libglade

NO_REGRESS=	Yes

.include <bsd.port.mk>
