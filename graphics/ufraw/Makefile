# $OpenBSD: Makefile,v 1.9 2007/08/06 22:52:09 mbalmer Exp $

COMMENT=		"read and manipulate raw images from digital cameras"

DISTNAME=		ufraw-0.12
PKGNAME=		${DISTNAME}p0

CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ufraw/}
HOMEPAGE=		http://ufraw.sourceforge.net/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		atk-1.0 c cairo expat fontconfig freetype \
			gdk_pixbuf-2.0 gdk-x11-2.0 glib-2.0 glitz \
			gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 png stdc++ X11 Xau \
			Xcursor Xext Xfixes Xi Xinerama Xrandr \
			Xdmcp Xrender z jpeg tiff

LIB_DEPENDS=		gimp-2.0,gimpbase-2.0,gimpcolor-2.0,gimpmath-2.0,gimpui-2.0,gimpwidgets-2.0,gimpmodule-2.0:gimp-2.*:graphics/gimp/stable \
			lcms.>=1.15::graphics/lcms \
			bz2.>=10::archivers/bzip2 \
			exiv2::graphics/exiv2

MODULES=		devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--enable-extras

.include <bsd.port.mk>
