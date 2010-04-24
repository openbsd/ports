# $OpenBSD: Makefile,v 1.9 2010/04/24 20:18:40 naddy Exp $

COMMENT =		core event/X abstraction layer
DISTNAME =		ecore-0.9.9.061
PKGNAME =               ${DISTNAME}p0v0

SO_VERSION =		0.1
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in ecore ecore_con ecore_config ecore_evas ecore_file \
ecore_ipc ecore_job ecore_txt ecore_x ecore_imf_evas ecore_imf \
ecore_input
SHARED_LIBS +=		${_lib}	${SO_VERSION}
SHARED_LIBS +=		${_lib}-ver-svn-02 ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xss Xtst c crypto eet eina
WANTLIB += expat fontconfig freetype jpeg m pthread pthread-stubs
WANTLIB += ssl xcb z

MODULES=		converters/libiconv

USE_X11 =		Yes

USE_LIBTOOL =		Yes

LIB_DEPENDS =		evas::x11/e17/evas

# Note sure about gnutls, curl is useful , is with-x really really necessary ?
CONFIGURE_ARGS +=	--with-iconv-link=-liconv \
			--disable-sdl \
			--disable-gnutls \
			--disable-curl \
			--with-x
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			SSL_CFLAGS="-I/usr/include" SSL_LIBS="-lssl"

.include <bsd.port.mk>
