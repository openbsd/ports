# $OpenBSD: Makefile,v 1.6 2004/12/19 17:36:32 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"gtk+2 Python bindings"

V=		2.2.0
DISTNAME=	pygtk-${V}
PKGNAME=	py-gtk2-${V}
CATEGORIES=	x11

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 intl m pango-1.0.0.0 pangox-1.0.0.0 \
			pangoxft-1.0.0.0 xml2 z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pygtk/2.2/}

MODULES=	converters/libiconv lang/python

MODPY_DISTUTILS_BUILDARGS=	--enable-threading

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:py-Numeric-*:math/py-Numeric
LIB_DEPENDS=	gthread-2.0.0.0::devel/glib2 \
		glade-2.0.0.0::devel/libglade2 \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-thread
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-gtk2

pre-build:
	@perl -pi -e 's,%%PREFIX%%,${PREFIX},g' \
		${WRKSRC}/codegen/pygtk-codegen-2.0.in \
		${WRKSRC}/pygtk-2.0.pc.in

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples; tar cf - . | tar xf - -C ${EXAMPLESDIR}

.include <bsd.port.mk>
