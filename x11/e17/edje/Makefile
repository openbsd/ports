# $OpenBSD: Makefile,v 1.43 2018/07/01 18:33:38 espie Exp $

COMMENT =		complex graphical design & layout library

DISTNAME =		edje-1.7.10
EPOCH =			2
SHARED_LIBS +=	edje                 4.0      # 8.10
REVISION =		4

# BSD (epp binary GPLv2)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ${MODLUA_WANTLIB}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_ipc ecore_x eet eina eio embryo evas
WANTLIB += expat fontconfig freetype fribidi glib-2.0 graphite2 harfbuzz
WANTLIB += iconv intl jpeg m nghttp2 pcre pthread ssl xcb z

MODULES =		lang/lua \
			x11/e17

MODE17_MIME_DB =	Yes

LIB_DEPENDS +=		devel/fribidi \
			x11/e17/eio>=1.7.10 \
			x11/e17/embryo>=1.7.10v2 \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
