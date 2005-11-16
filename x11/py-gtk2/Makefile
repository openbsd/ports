# $OpenBSD: Makefile,v 1.9 2005/11/16 08:48:59 wilfried Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"gtk+2 Python bindings"

V=		2.4.1
DISTNAME=	pygtk-${V}
PKGNAME=	py-gtk2-${V}p0
CATEGORIES=	x11

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender atk-1.0.0.0 cairo fontconfig freetype \
			glitz intl m pango-1.0.0.0 pangocairo-1.0.0.0 \
			pangoft2-1.0.0.0 png xml2 z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pygtk/2.4/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	converters/libiconv lang/python

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:py-Numeric-*:math/py-Numeric
LIB_DEPENDS=	glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
		glade-2.0.0.0::devel/libglade2 \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

REGRESS_FLAGS=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

EXAMPLESDIR=	${PREFIX}/share/examples/py-gtk2

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	@cd ${WRKBUILD} && exec ${SUDO} ${SETENV} ${MAKE_ENV} ${_FAKE_SETUP} ${MAKE_PROGRAM} ${FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples; pax -rw [a-z]* ${EXAMPLESDIR}

.include <bsd.port.mk>
