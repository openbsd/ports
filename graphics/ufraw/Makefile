# $OpenBSD: Makefile,v 1.21 2009/11/16 12:03:12 sthen Exp $

COMMENT=	read and manipulate raw images from digital cameras

DISTNAME=	ufraw-0.16
PKGNAME=	${DISTNAME}p0

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ufraw/}
HOMEPAGE=	http://ufraw.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs stdc++ tiff xcb z

LIB_DEPENDS=	gimp-2.0,gimpbase-2.0,gimpcolor-2.0,gimpconfig-2.0,gimpmath-2.0,gimpui-2.0,gimpwidgets-2.0,gimpmodule-2.0:gimp->=2,<3:graphics/gimp/stable \
		lcms.>=1.15::graphics/lcms \
		bz2.>=10::archivers/bzip2 \
		exiv2::graphics/exiv2 \
		gtkimageview::graphics/gtkimageview

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	--enable-extras

FLAVORS=	lensfun
FLAVOR?=

.if ${FLAVOR:L:Mlensfun}
CONFIGURE_ARGS+=--with-lensfun
LIB_DEPENDS+=	lensfun::graphics/lensfun
.endif

.include <bsd.port.mk>
