# $OpenBSD: Makefile,v 1.3 2008/02/02 09:35:42 steven Exp $

COMMENT=	personal accounting application

DISTNAME=	grisbi-0.5.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.grisbi.org/

MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grisbi/}

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender c fontconfig freetype m stdc++ z \
		atk-1.0 cairo glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 png expat

MODULES=	devel/gettext

LIB_DEPENDS=	xml2.>=9::textproc/libxml \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		ofx.>=3::devel/libofx

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
