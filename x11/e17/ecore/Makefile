# $OpenBSD: Makefile,v 1.14 2011/01/16 00:40:32 laurent Exp $

COMMENT =		core event/X abstraction layer
DISTNAME =		ecore-1.0.0.beta2
PKGNAME =		ecore-1.0.0

EPOCH =			0

SO_VERSION =		1.0
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

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst cares crypto curl eet eina evas expat
WANTLIB += fontconfig freetype fribidi glib-2.0 idn jpeg m pcre pthread-stubs
WANTLIB += ssl xcb z

MODULES =		devel/gettext

USE_LIBTOOL =		Yes

LIB_DEPENDS =		x11/e17/evas>=1.0 \
			net/curl \
			net/libcares \
			devel/glib2 \
			devel/pcre

CONFIGURE_ARGS +=	--disable-doc \
			--disable-gnutls \
			--enable-cares
# perf ?
#			--with-internal-maximum-log-level=2

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			SSL_CFLAGS="-I/usr/include" SSL_LIBS="-lssl"

.include <bsd.port.mk>
