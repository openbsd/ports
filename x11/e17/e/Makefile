# $OpenBSD: Makefile,v 1.19 2010/04/24 20:18:40 naddy Exp $

COMMENT =		the enlightened window manager
DISTNAME =		enlightenment-0.16.999.061
PKGNAME =		${DISTNAME}p2v0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xss Xtst c crypto dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_file ecore_imf ecore_imf_evas
WANTLIB += ecore_input ecore_ipc ecore_job ecore_txt ecore_x eet
WANTLIB += eina embryo evas expat fontconfig freetype jpeg m pthread
WANTLIB += pthread-stubs ssl xcb z

LIB_DEPENDS =		edje::x11/e17/edje \
			efreet,efreet_mime::x11/e17/efreet \
			edbus,ehal::x11/e17/e_dbus

RUN_DEPENDS =		::devel/desktop-file-utils

# Broken configure shit HAVE_ECORE_TXT=TRUE not defined correctly 
# does not appear in AM_CONDITIONAL . Usually this means the macro
# was only invoked conditionally.
# This prevent us from disabeling the broken/useless modules in configure
#CONFIGURE_ARGS +=	 --disable-battery --disable-temperature \
#		--disable-cpufreq --disable-mixer --disable-conf-theme \
#		--disable-conf-icon-theme
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lcrypto -pthread -liconv -lintl"

USE_LIBTOOL =		Yes

# Stupid crap in /src/modules/illume/dicts chokes in regular make.
# Some issue with the "(US)" bit
USE_GMAKE =		Yes

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/enlightenment
	mv ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/

.include <bsd.port.mk>
