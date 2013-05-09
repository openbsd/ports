# $OpenBSD: Makefile,v 1.30 2013/05/09 17:03:55 rpe Exp $

COMMENT =		core event/X abstraction layer

DISTNAME =		ecore-1.7.6
EPOCH =			2

SO_VERSION =		3.1		# 8.6
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in ecore ecore_con ecore_evas ecore_file ecore_imf \
ecore_imf_evas ecore_input ecore_input_evas ecore_ipc ecore_x
SHARED_LIBS +=		${_lib}	${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst cares crypto curl eet eina
WANTLIB += evas expat ffi fontconfig freetype fribidi gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 harfbuzz
WANTLIB += ibus-1.0 icudata icule icuuc idn jpeg m pcre pthread
WANTLIB += icudata icule icuuc idn jpeg m pcre pthread
WANTLIB += pthread-stubs ssl xcb z

MODULES =		devel/gettext

LIB_DEPENDS =		devel/glib2 \
			devel/fribidi \
			inputmethods/ibus \
			net/curl \
			net/libcares \
			x11/e17/evas>=1.7.6.1v2

CONFIGURE_ARGS +=	--disable-doc \
			--disable-gnutls \
			--enable-cares \
			--disable-ecore-cocoa

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
