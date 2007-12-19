# $OpenBSD: Makefile,v 1.7 2007/12/19 20:09:36 laurent Exp $

COMMENT=	toolkit based on the EFL
DISTNAME=	etk-20071211
PKGNAME=        ${DISTNAME}p1
SHARED_LIBS +=  etk                 0.0          # .1.0


# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB=	SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xinerama Xp Xrandr Xrender Xss c crypto curl eet evas \
		expat fontconfig freetype idn jpeg m pthread ssl usbhid z

LIB_DEPENDS=		ecore,ecore_evas,ecore_file,ecore_job,ecore_txt,ecore_x,ecore_imf,ecore_imf_evas::x11/e17/ecore \
			embryo::x11/e17/embryo \
			edje::x11/e17/edje

RUN_DEPENDS=		::devel/desktop-file-utils

USE_GMAKE=		Yes

CONFIGURE_STYLE=	automake autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			E_CFLAGS="-I${LOCALBASE}/include/efreet" \
			E_LIBS="-lssl -lcrypto -leet -levas -lecore -lecore_ipc -ledje -lefreet -lefreet_mime"

REGRESS_TARGET=         etk_test
REGRESS_IS_INTERACTIVE= yes

.include <bsd.port.mk>
