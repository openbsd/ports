# $OpenBSD: Makefile,v 1.6 2002/05/15 18:05:19 espie Exp $
# Original from: John Harper <jsh@users.sourceforge.net>

COMMENT=	"GTK+ binding for librep Lisp environment"

VERSION=	0.15
DISTNAME=	rep-gtk-${VERSION}
CATEGORIES=     x11
NEED_VERSION=	1.402
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=rep-gtk/}

HOMEPAGE=       http://rep-gtk.sourceforge.net/

LIB_DEPENDS= 	gtk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		rep.10::lang/librep

MAINTAINER=	Robbie Gates <robbie@g7.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=     OPSYS_VER VERSION

USE_X11=	Yes
USE_GMAKE=      Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gdk-pixbuf --without-gnome --without-libglade

.include <bsd.port.mk>
