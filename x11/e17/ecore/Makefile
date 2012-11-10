# $OpenBSD: Makefile,v 1.21 2012/11/10 15:01:15 stsp Exp $

COMMENT =		core event/X abstraction layer
DISTNAME =		ecore-1.7.1

EPOCH =			2

SO_VERSION =		2.0		# 8.1
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
WANTLIB += evas expat ffi fontconfig freetype fribidi glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 harfbuzz icudata icule icuuc
WANTLIB += idn jpeg m pcre pthread ssl xcb z

LIB_DEPENDS =		devel/glib2 \
			devel/fribidi \
			net/curl \
			net/libcares \
			x11/e17/evas>=2.0

CONFIGURE_ARGS +=	--disable-doc \
			--disable-gnutls \
			--enable-cares \
			--disable-ecore-cocoa
# perf ?
#			--with-internal-maximum-log-level=2

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
