# $OpenBSD: Makefile,v 1.37 2013/12/06 13:16:45 dlg Exp $

COMMENT =		complex graphical design & layout library

DISTNAME =		edje-1.7.9
EPOCH =			2
SHARED_LIBS +=	edje                 3.0      # 8.6

# BSD (epp binary GPLv2)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_ipc ecore_x eet eina eio embryo
WANTLIB += evas expat fontconfig freetype fribidi glib-2.0
WANTLIB += graphite2 harfbuzz idn jpeg
WANTLIB += m pcre pthread pthread-stubs ssl xcb z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua \
			x11/e17

MODE17_MIME_DB =	Yes

LIB_DEPENDS +=		devel/fribidi \
			x11/e17/eio>=1.7.9 \
			x11/e17/embryo>=1.7.9v2 \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
