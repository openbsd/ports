# $OpenBSD: Makefile,v 1.5 2004/06/22 03:18:43 marcm Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		"collection of theme engines for GTK+2"

DISTNAME=		gtk-engines-2.2.0
PKGNAME=		gtk-engines2-2.2.0
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-engines/2.2/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig->=0.9.0:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.400.0,gdk_pixbuf-2.0.400.0,gtk-x11-2.0.400.0::x11/gtk+2

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE= 	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/Pixmap/gtk-2.0
	${INSTALL_DATA} ${WRKSRC}/pixbuf/examples/bubble/gtk-2.0/* ${PREFIX}/share/themes/Pixmap/gtk-2.0

.include <bsd.port.mk>
