# $OpenBSD: Makefile,v 1.6 2005/02/13 17:49:46 alek Exp $

COMMENT=	"interactive geometry program"

DISTNAME=	drgeo-0.9.13
CATEGORIES=	education math

HOMEPAGE=	http://www.ofset.org/drgeo/	

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
			xml2.0.0 X11 Xext Xft Xinerama Xrender c fontconfig \
			freetype m stdc++ z Xcursor

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ofset/}

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glade-2.0.=0::devel/libglade2 \
		guile::lang/guile

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
