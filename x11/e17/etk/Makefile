# $OpenBSD: Makefile,v 1.9 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT=	toolkit based on the EFL
DISTNAME=	etk-20071211
PKGNAME=        ${DISTNAME}p3

SHARED_LIBS +=  etk                 0.0          # .1.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB += SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xp Xrandr Xrender Xss c crypto curl eet evas
WANTLIB += expat fontconfig freetype idn jpeg m pthread sndio
WANTLIB += ssl usbhid z pthread-stubs xcb

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
