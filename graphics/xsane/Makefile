# $OpenBSD: Makefile,v 1.1.1.1 2006/10/20 17:54:45 ajacoutot Exp $

COMMENT=	"scanner frontend for SANE"

DISTNAME=	xsane-0.991
CATEGORIES=	graphics

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/xsane/ \
		http://gd.tuwien.ac.at/hci/sane/xsane/ \
		ftp://gd.tuwien.ac.at/hci/sane/xsane/ \
		ftp://ftp.no.mostang.com/pub/sane/xsane/ \
		ftp://ftp2.sane-project.org/pub/sane/xsane/ \
		ftp://sunsite.uio.no/pub/sane/xsane/

HOMEPAGE=	http://www.xsane.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	freetype c pthread m fontconfig X11 z gphoto2.>=2 \
		gphoto2_port.>=5 glib-2.0 gmodule-2.0 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 cairo.>=4 tiff.>=38 \
		usb.>=8 jpeg.>=62 atk-1.0 png.>=5 gobject-2.0

MODULES=	gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		sane.>=1::graphics/sane-backends

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		gt_cv_func_gettext_libintl=yes

NO_REGRESS=	Yes

post-extract:
	@rm -f ${WRKSRC}/src/xsane-save.c.orig

FLAVORS=	gimp
FLAVOR?=

.if ${FLAVOR:L} == "gimp"
LIB_DEPENDS+=	gimp-2.0.>=200.0,gimpui-2.0.>=200.0,gimpmath-2.0.>=200.0,gimpwidgets-2.0.>=200.0,gimpbase-2.0.>=200.0,gimpcolor-2.0.>=200.0::graphics/gimp/stable
CONFIGURE_ENV+=	CPPFLAGS+="-I${LOCALBASE}/include/gimp-2.0"
.else
CONFIGURE_ARGS+=--disable-gimp
.endif

.include <bsd.port.mk>
