# $OpenBSD: Makefile,v 1.29 2013/01/08 08:13:28 jasper Exp $

COMMENT =		complex graphical design & layout library
DISTNAME =		edje-1.7.4

REVISION = 		1
EPOCH =			2

SHARED_LIBS +=		edje 3.0	# 8.4

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_ipc ecore_input
WANTLIB += ecore_input_evas ecore_x eet eina eio embryo evas expat ffi
WANTLIB += fontconfig freetype fribidi glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += harfbuzz idn icudata icule icuuc jpeg m pcre pthread
WANTLIB += ssl xcb z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua

USE_LIBTOOL =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		misc/shared-mime-info>=0.21

LIB_DEPENDS +=		x11/e17/ecore>=3.0 \
			x11/e17/embryo>=3.0 \
			x11/e17/eio \
			${MODLUA_LIB_DEPENDS} \
			devel/fribidi

CONFIGURE_ARGS +=	--disable-doc
# perf ?
#	--enable-amalgamation
#	--enable-edje-program-cache
#    don't use floating point, for architectures without FPU
#	--enable-fixed-point

.include <bsd.port.mk>
