# $OpenBSD: Makefile,v 1.14 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT=	the enlightened window manager
DISTNAME=	e-20071211
PKGNAME=        ${DISTNAME}p6

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xp Xrandr Xrender Xss c crypto curl ecore
WANTLIB += ecore_con ecore_evas ecore_file ecore_imf ecore_imf_evas
WANTLIB += ecore_ipc ecore_job ecore_txt ecore_x eet embryo evas
WANTLIB += expat fontconfig freetype idn jpeg m pthread sndio
WANTLIB += ssl usbhid z pthread-stubs xcb

LIB_DEPENDS=		SDL::devel/sdl \
			edje::x11/e17/edje \
			efreet,efreet_mime::x11/e17/efreet

CONFIGURE_STYLE=	automake autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			E_CFLAGS="-I${LOCALBASE}/include/efreet" \
			E_LIBS="-lssl -lcrypto -leet -levas -lecore -lecore_ipc -lecore_imf -lecore_imf_evas -ledje -lefreet -lefreet_mime"



post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/enlightenment
	mv ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/

.include <bsd.port.mk>
