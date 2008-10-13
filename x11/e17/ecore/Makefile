# $OpenBSD: Makefile,v 1.5 2008/10/13 14:23:10 sturm Exp $

COMMENT=	core event/X abstraction layer
DISTNAME=	ecore-20071211

SO_VERSION=	0.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in ecore ecore_con ecore_config ecore_evas ecore_file \
ecore_ipc ecore_job ecore_txt ecore_x ecore_imf_evas ecore_imf
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xinerama Xp Xrandr Xrender Xss c crypto eet expat fontconfig \
		freetype idn jpeg m ssl usbhid z

MODULES=		devel/gettext

USE_X11=		Yes

LIB_DEPENDS=		SDL::devel/sdl \
			curl::net/curl \
			evas::x11/e17/evas

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			SSL_CFLAGS="-I/usr/include" SSL_LIBS="-lssl"
CONFIGURE_ARGS=		--with-iconv-link=-liconv

.include <bsd.port.mk>
