# $OpenBSD: Makefile,v 1.4 2006/02/11 21:27:04 steven Exp $

COMMENT=	"GTK Extra Widget Set"

DISTNAME=	gtk+extra-0.99.17
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	gtkextra 17.0
CATEGORIES=	x11 devel

HOMEPAGE=	http://gtkextra.sourceforge.net
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/src/

WANTLIB=	X11 Xext Xi m glib gmodule

MODULES=	devel/gettext

LIB_DEPENDS=	gtk.2,gdk.2::x11/gtk+

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
