# $OpenBSD: Makefile,v 1.19 2009/06/24 22:44:45 sthen Exp $

COMMENT=	API for accessing scanners, frontends

DISTNAME=	sane-frontends-1.0.14
PKGNAME=	${DISTNAME}p12
CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/${DISTNAME}/ \
		http://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://ftp.sane-project.org/pub/sane/old-versions/${DISTNAME}/

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo exif expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread tiff usb z
WANTLIB += avahi-client avahi-common

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		sane.>=1::graphics/sane-backends

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

FLAVORS=	gimp
FLAVOR?=

.if ${FLAVOR:L} == "gimp"
LIB_DEPENDS+=	gimp-2.0.>=200.0,gimpui-2.0.>=200.0,gimpmath-2.0.>=200.0,gimpwidgets-2.0.>=200.0,gimpbase-2.0.>=200.0,gimpcolor-2.0.>=200.0::graphics/gimp/stable
CONFIGURE_ENV+=	CPPFLAGS+="-I${LOCALBASE}/include/gimp-2.0"
.else
CONFIGURE_ARGS+=--disable-gimp
.endif

.include <bsd.port.mk>
