# $OpenBSD: Makefile,v 1.40 2019/09/07 13:16:47 naddy Exp $

COMMENT =		core event/X abstraction layer

DISTNAME =		ecore-1.7.10
EPOCH =			2
REVISION =		4

SO_VERSION =		4.0		# 8.10
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in ecore ecore_con ecore_evas ecore_file ecore_imf \
ecore_imf_evas ecore_input ecore_input_evas ecore_ipc ecore_x
SHARED_LIBS +=		${_lib}	${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xtst cares crypto curl eet eina evas expat ffi
WANTLIB += fontconfig freetype fribidi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 harfbuzz ibus-1.0 iconv intl jpeg m
WANTLIB += nghttp2 pcre pthread ssl xcb z

LIB_DEPENDS =		devel/glib2 \
			devel/fribidi \
			inputmethods/ibus \
			net/curl \
			net/libcares \
			x11/e17/evas>=1.7.10v2

CONFIGURE_ARGS +=	--disable-doc \
			--disable-gnutls \
			--enable-cares \
			--disable-ecore-cocoa \
			--disable-ecore-imf-scim

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
