# $OpenBSD: Makefile,v 1.1.1.1 2001/02/21 18:08:35 danh Exp $
# Original from: John Harper <jsh@users.sourceforge.net>

VERSION=	0.15
DISTNAME=	rep-gtk-${VERSION}
CATEGORIES=     x11
NEED_VERSION=	1.356
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= rep-gtk

HOMEPAGE=       http://rep-gtk.sourceforge.net/

LIB_DEPENDS= 	gtk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		rep.10::lang/librep

MAINTAINER=	robbie@g7.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=     OPSYS_VER VERSION

USE_GMAKE=      Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gdk-pixbuf --without-gnome

.include <bsd.port.mk>
