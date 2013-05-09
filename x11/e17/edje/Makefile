# $OpenBSD: Makefile,v 1.34 2013/05/09 13:00:13 rpe Exp $

COMMENT =		complex graphical design & layout library
DISTNAME =		edje-1.7.6
EPOCH =			2

SHARED_LIBS +=		edje 3.0	# 8.6

# BSD (epp binary GPLv2)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_ipc ecore_x eet eina eio embryo
WANTLIB += evas expat ffi fontconfig freetype fribidi glib-2.0
WANTLIB += gobject-2.0 graphite2 harfbuzz icudata icule icuuc idn jpeg
WANTLIB += m pcre pthread pthread-stubs ssl xcb z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua \
			x11/e17

MODE17_MIME_DB =	Yes


LIB_DEPENDS +=		devel/fribidi \
			x11/e17/eio>=1.7.6 \
			x11/e17/embryo>=1.7.6v2 \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_ARGS +=	--disable-doc
# perf ?
#	--enable-amalgamation
#	--enable-edje-program-cache
#    don't use floating point, for architectures without FPU
#	--enable-fixed-point

.include <bsd.port.mk>
