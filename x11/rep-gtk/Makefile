# $OpenBSD: Makefile,v 1.11 2004/12/19 17:36:33 alek Exp $

COMMENT=	"GTK+ binding for librep Lisp environment"

VERSION=	0.15
DISTNAME=	rep-gtk-${VERSION}
CATEGORIES=     x11

HOMEPAGE=       http://rep-gtk.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi gmodule iconv intl m

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=rep-gtk/}

LIB_DEPENDS= 	gtk.1.2,gdk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		rep.10::lang/librep

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OPSYS_VER}
SUBST_VARS=     GNU_ARCH VERSION

USE_X11=	Yes
USE_GMAKE=      Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gdk-pixbuf --without-gnome --without-libglade

NO_REGRESS=	Yes

.include <bsd.port.mk>
