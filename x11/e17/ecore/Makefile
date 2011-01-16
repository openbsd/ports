# $OpenBSD: Makefile,v 1.16 2011/01/16 11:34:43 jasper Exp $

COMMENT =		core event/X abstraction layer
DISTNAME =		ecore-1.0.0.beta2

REVISION =		0

EPOCH =			1

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

MODULES =		devel/gettext

USE_LIBTOOL =		Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xss Xtst cares crypto curl
WANTLIB += eet eina evas expat fontconfig freetype glib-2.0 idn
WANTLIB += jpeg m pcre pthread-stubs ssl xcb z

LIB_DEPENDS =		devel/glib2 \
			net/curl \
			net/libcares \
			x11/e17/evas>=1.0

CONFIGURE_ARGS +=	--disable-doc \
			--disable-gnutls \
			--enable-cares
# perf ?
#			--with-internal-maximum-log-level=2

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
