# $OpenBSD: Makefile,v 1.30 2011/06/16 10:16:43 ajacoutot Exp $

COMMENT=	scanner frontend for SANE

DISTNAME=	xsane-0.998
REVISION=	1

CATEGORIES=	graphics

MASTER_SITES=	http://www.xsane.org/download/

HOMEPAGE=	http://www.xsane.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs sane tiff usb xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		graphics/lcms \
		graphics/sane-backends
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv" \
		gt_cv_func_gettext_libintl=yes

NO_REGRESS=	Yes

FLAVORS=	gimp
FLAVOR?=

.if ${FLAVOR:L} == "gimp"
WANTLIB += gthread-2.0 gimp-2.0>=200.0 gimpmodule-2.0 gimpui-2.0 
WANTLIB += gimpmath-2.0 gimpwidgets-2.0 gimpbase-2.0 gimpcolor-2.0 
WANTLIB += gimpconfig-2.0
LIB_DEPENDS +=graphics/gimp/stable
CONFIGURE_ENV += CPPFLAGS+="-I${LOCALBASE}/include/gimp-2.0"
.else
CONFIGURE_ARGS+=--disable-gimp
.endif

MAKE_FLAGS=	localedir=${TRUEPREFIX}/share/locale \
		sanedatadir=${TRUEPREFIX}/share/ \
		xsanedocdir=${TRUEPREFIX}/share/doc/xsane/

.include <bsd.port.mk>
