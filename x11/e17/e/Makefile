# $OpenBSD: Makefile,v 1.4 2007/12/03 10:57:22 bernd Exp $

COMMENT=	the enlightened window manager
DISTNAME=	e-20071107
PKGNAME=	${DISTNAME}p0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xinerama Xp Xrandr Xrender Xss c crypto curl ecore \
		ecore_con ecore_evas ecore_file ecore_ipc ecore_job \
		ecore_txt ecore_x eet embryo evas expat fontconfig \
		freetype idn jpeg m pthread ssl usbhid z

LIB_DEPENDS=		SDL::devel/sdl \
			edje::x11/e17/edje \
			efreet,efreet_mime::x11/e17/efreet
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	automake autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			E_CFLAGS="-I${LOCALBASE}/include/efreet" \
			E_LIBS="-lssl -lcrypto -leet -levas -lecore -lecore_ipc -ledje -lefreet -lefreet_mime"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/enlightenment
	mv ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/

.if ${MACHINE_ARCH} == "amd64"
E_ARCH=			x86_64
.else
E_ARCH=			${MACHINE_ARCH}
.endif

SUBST_VARS=		E_ARCH

.include <bsd.port.mk>
