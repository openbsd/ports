# $OpenBSD: Makefile,v 1.25 2013/01/08 08:13:28 jasper Exp $

COMMENT =		core event/X abstraction layer
DISTNAME =		ecore-1.7.4

REVISION = 		2
EPOCH =			2

SO_VERSION =		3.0		# 8.4
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in ecore ecore_con ecore_evas ecore_file ecore_imf \
ecore_imf_evas ecore_input ecore_input_evas ecore_ipc ecore_x
SHARED_LIBS +=		${_lib}	${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =		devel/gettext

USE_LIBTOOL =		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst cares crypto curl eet eina
WANTLIB += evas expat ffi fontconfig freetype fribidi glib-2.0 gio-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 harfbuzz ibus-1.0 icudata icule
WANTLIB += icuuc idn jpeg m pcre pthread ssl xcb z

LIB_DEPENDS =		devel/glib2 \
			devel/fribidi \
			inputmethods/ibus \
			net/curl \
			net/libcares \
			x11/e17/evas>=3.0

CONFIGURE_ARGS +=	--disable-doc \
			--disable-gnutls \
			--enable-cares \
			--disable-ecore-cocoa
# perf ?
#			--with-internal-maximum-log-level=2

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
