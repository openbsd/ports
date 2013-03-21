# $OpenBSD: Makefile,v 1.33 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT =		complex graphical design & layout library
DISTNAME =		edje-1.7.5
EPOCH =			2

SHARED_LIBS +=		edje 3.0	# 8.5

# BSD (epp binary GPLv2)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_ipc ecore_input
WANTLIB += ecore_input_evas ecore_x eet eina eio embryo evas expat ffi
WANTLIB += fontconfig freetype fribidi glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += harfbuzz idn icudata icule icuuc jpeg m pcre pthread
WANTLIB += ssl xcb z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua \
			x11/e17

MODE17_MIME_DB =	Yes


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
