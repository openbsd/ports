# $OpenBSD: Makefile,v 1.2 2005/11/15 14:59:21 wilfried Exp $

COMMENT=	"API for accessing scanners, frontends"

DISTNAME=	sane-frontends-1.0.14
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/${DISTNAME}/ \
		http://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://ftp.sane-project.org/pub/sane/old-versions/${DISTNAME}/

WANTLIB=	c X11 m freetype fontconfig \
		pango-1.0.0.0  glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 \
		cairo jpeg atk-1.0.0.0 usb

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		sane.1::graphics/sane-backends

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

FLAVORS=	gimp
FLAVOR?=

.if ${FLAVOR:L} == "gimp"
LIB_DEPENDS+=	gimp-2.0.200.0,gimpui-2.0.200.0,gimpmath-2.0.200.0,gimpwidgets-2.0.200.0,gimpbase-2.0.200.0,gimpcolor-2.0.200.0::graphics/gimp/stable
CONFIGURE_ENV+=	CPPFLAGS+="-I${LOCALBASE}/include/gimp-2.0"
.else
CONFIGURE_ARGS+=--disable-gimp
.endif

.include <bsd.port.mk>
