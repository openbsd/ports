# $OpenBSD: Makefile,v 1.3 2007/12/02 14:18:37 jasper Exp $

COMMENT=	toolkit based on the EFL
DISTNAME=	etk-20071107
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

LIB_DEPENDS=		ecore,ecore_evas,ecore_file,ecore_job,ecore_txt,ecore_x::x11/e17/ecore \
			embryo::x11/e17/embryo \
			edje::x11/e17/edje

RUN_DEPENDS=		::devel/desktop-file-utils

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
AUTOMAKE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	automake autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			E_CFLAGS="-I${LOCALBASE}/include/efreet" \
			E_LIBS="-lssl -lcrypto -leet -levas -lecore -lecore_ipc -ledje -lefreet -lefreet_mime"

.if ${MACHINE_ARCH} == "amd64"
E_ARCH=			x86_64
.else
E_ARCH=			${MACHINE_ARCH}
.endif

SUBST_VARS=		E_ARCH

.include <bsd.port.mk>
