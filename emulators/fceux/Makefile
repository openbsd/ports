# $OpenBSD: Makefile,v 1.2 2013/01/07 03:14:00 bentley Exp $

COMMENT =		emulator for Nintendo Entertainment System

DISTNAME =		fceux-2.2.0.src
PKGNAME =		${DISTNAME:S/.src//}
CATEGORIES =		emulators games

HOMEPAGE =		http://fceux.com/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fceultra/}

WANTLIB += 		GL SDL X11 c gd gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0
WANTLIB += 		gobject-2.0 gtk-x11-2.0 lua5.1 m pixman-1 pthread
WANTLIB += 		stdc++ z ${MODLUA_WANTLIB}

LIB_DEPENDS =		devel/sdl \
			graphics/gd \
			x11/gtk+2 

MODULES =		devel/scons \
			lang/lua

MAKE_ENV =		CC="${CC}" \
			CXX="${CXX}" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_STYLE =	scons

WRKDIST =		${WRKDIR}/fceux

NO_REGRESS =		Yes

SUBST_VARS +=		MODLUA_WANTLIB
SUBST_VARS +=		MODLUA_LIB

post-extract:
	@perl -MExtUtils::Command -e dos2unix ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKDIST}/SConstruct

do-install:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} \
		--prefix=${PREFIX} ${INSTALL_TARGET}

# XXX scons picks up x264.h even though it's in an apparently unused ifdef block
DPB_PROPERTIES =	nojunk

.include <bsd.port.mk>
