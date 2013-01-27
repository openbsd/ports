# $OpenBSD: Makefile,v 1.30 2013/01/27 15:57:29 rpe Exp $

COMMENT =		complex graphical design & layout library
DISTNAME =		edje-1.7.5
EPOCH =			2

SHARED_LIBS +=		edje 3.0	# 8.5

# BSD (epp binary GPLv2)
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

LIB_DEPENDS +=		devel/fribidi \
			x11/e17/eio>=1.7.5 \
			x11/e17/embryo>=1.7.5v2 \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_ARGS +=	--disable-doc
# perf ?
#	--enable-amalgamation
#	--enable-edje-program-cache
#    don't use floating point, for architectures without FPU
#	--enable-fixed-point

.include <bsd.port.mk>
