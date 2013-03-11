# $OpenBSD: Makefile,v 1.31 2013/03/11 11:10:55 espie Exp $

COMMENT=	API for accessing scanners, frontends

DISTNAME=	sane-frontends-1.0.14
REVISION=	18

CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs sane tiff usb xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/${DISTNAME}/ \
		http://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://ftp.sane-project.org/pub/sane/old-versions/${DISTNAME}/

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		graphics/sane-backends

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

FLAVORS=	gimp
FLAVOR?=

.if ${FLAVOR} == "gimp"
LIB_DEPENDS+=	graphics/gimp/stable
WANTLIB +=	gimp-2.0>=200.0 gimpui-2.0>=200.0 gimpmath-2.0>=200.0 \
		gimpwidgets-2.0>=200.0 gimpbase-2.0>=200.0 \
		gimpcolor-2.0>=200.0
CONFIGURE_ENV+=	CPPFLAGS+="-I${LOCALBASE}/include/gimp-2.0"
.else
CONFIGURE_ARGS+=--disable-gimp
.endif

.include <bsd.port.mk>
