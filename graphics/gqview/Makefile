# $OpenBSD: Makefile,v 1.24 2002/07/04 14:14:06 jcs Exp $
# $FreeBSD: Makefile,v 1.15 1999/08/25 06:14:08 obrien Exp $

COMMENT=	"Gtk-based graphic file viewer"

DISTNAME=	gqview-1.1.5
CATEGORIES=	graphics
NEED_VERSION=	1.525
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqview/}

HOMEPAGE=	http://gqview.sourceforge.net

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		gdk_pixbuf.2::graphics/gdk-pixbuf

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
