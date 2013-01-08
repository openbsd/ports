# $OpenBSD: Makefile,v 1.41 2013/01/08 08:13:28 jasper Exp $

COMMENT =		the enlightened window manager

VERSION = 		0.17.0
DISTNAME =		enlightenment-${VERSION}
PKGNAME =		enlightenment-${VERSION:S/-//}
EXTRACT_SUFX=		.tar.bz2

REVISION = 		1
EPOCH =			1

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES +=		devel/gettext \
			lang/lua

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xss Xtst c cares crypto
WANTLIB += curl dbus-1 ecore ecore_con ecore_evas
WANTLIB += ecore_file ecore_imf ecore_imf_evas ecore_input ecore_input_evas
WANTLIB += ecore_ipc ecore_x edbus edje eet efreet efreet_mime
WANTLIB += efreet_trash ehal eina eio embryo enotify eukit evas execinfo
WANTLIB += expat ffi fribidi fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 harfbuzz idn icudata icule icuuc jpeg ${MODLUA_WANTLIB}
WANTLIB += m pcre pthread pthread-stubs ssl xcb xcb-keysyms xcb-shape z

LIB_DEPENDS =		x11/e17/edje>=3.0 \
			x11/e17/efreet>=3.0 \
			x11/e17/ecore>=3.0 \
			x11/e17/e_dbus>=3.0 \
			x11/e17/eio \
			devel/fribidi \
			devel/libexecinfo

RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_ARGS +=	--disable-doc \
			--disable-nls

# Broken configure shit HAVE_ECORE_TXT=TRUE not defined correctly
# does not appear in AM_CONDITIONAL . Usually this means the macro
# was only invoked conditionally.
# This prevent us from disabeling the broken/useless modules in configure
#CONFIGURE_ARGS +=	--disable-battery \
#			--disable-temperature \
#			--disable-cpufreq \
#			--disable-mixer \
#			--disable-conf-theme \
#			--disable-conf-icon-theme
#CONFIGURE_ARGS +=	--disable-nls \
#			--disable-ibar \
#			--disable-dropshadow \
#			--disable-clock \
#			--disable-pager \
#			--disable-battery \
#			--disable-temperature \
#			--disable-cpufreq  \
#			--disable-ibox \
#			--disable-start \
#			--disable-exebuf \
#			--disable-winlist \
#			--disable-fileman \
#			--disable-fileman-opinfo \
#			--disable-wizard \
#			--disable-conf \
#			--disable-conf-wallpaper \
#			--disable-conf-wallpaper2 \
#			--disable-conf-theme \
#			--disable-conf-colors \
#			--disable-conf-intl \
#			--disable-mixer \
#			--with-x \
#			--disable-dependency-tracking

#CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
#			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lcrypto -pthread -liconv -lintl" \
#			E_REMOTE_LIBS="-lecore_file -lecore_ipc -lecore_con -lecore -lglib-2.0 -lintl -liconv -leina -leet" \
#			E_REMOTE_CFLAGS="-I$(LOCALABSE)/include/ecore-1 -I$(LOCALBASE)/include/glib-2.0 -I/$(LOCALBASE)/lib/glib-2.0/include -I$(LOCALBASE)/include/eina-1 -I$(LOCALBASE)/include/eina-1/eina" \
#			E_IMC_CFLAGS="-I$(LOCALABSE)/include/ecore-1 -I$(LOCALBASE)/include/glib-2.0 -I/$(LOCALBASE)/lib/glib-2.0/include -I$(LOCALBASE)/include/eina-1 -I$(LOCALBASE)/include/eina-1/eina" \
#			E_IMC_LIBS="-L${LOCALBASE}/lib -lecore_file -lecore_ipc -lecore_con -lecore -lglib-2.0 -lintl -liconv -leina -leet" \
#			E_THUMB_CFLAGS="-I$(LOCALBASE)/include/efreet-1 -I$(LOCALBASE)/include/edje-1 -I$(LOCALBASE)/include -I$(LOCALBASE)/include/embryo-1 -I$(LOCALBASE)/include/glib-2.0 -I$(LOCALBASE)/lib/glib-2.0/include -I$(LOCALBASE)/include/ecore-1 -I$(LOCALBASE)/include/evas-1 -I$(LOCALBASE)/eet-1 -I$(X11BASE)/include -I$(X11BASE)/include/freetype2 -I$(LOCALBASE)/include/eina-1 -I$(LOCALBASE)/include/eina-1/eina" \
#			E_THUMB_LIBS="-L$(LOCALBASE)/lib -L$(LOCALBASE)/lib -lecore_evas -lecore_x -lecore_input_evas -lecore_input -lecore_ipc -lecore_con -lecore_file -lefreet -levas -ledje -lecore_imf_evas -lecore_imf -llua -lm -lembryo -lecore -lglib-2.0 -lintl -liconv -levas -lfontconfig -lexpat -lfreetype -lz -leet -leina" \
#			E_FM_CFLAGS="-I${LOCALBASE}/include/efreet-1-I${LOCALBASE}/include/eet-1 -I${LOCALBASE}/include/e_dbus-1 -I${LOCALBASE}/include/ecore-1 -I${LOCALBASE}/include/glib-2.0 -I${LOCALBASE}/lib/glib-2.0/include -I${LOCALBASE}/include/eina-1 -I${LOCALBASE}/include/eina-1/eina -I${LOCALBASE}/include/dbus-1.0 -I${LOCALBASE}/lib/dbus-1.0/include" \
#			E_FM_LIBS="-L${LOCALBASE}/lib -pthread -lehal -ledbus -lecore -lglib-2.0 -lintl -liconv -leina -ldbus-1 -lecore_ipc -lecore_con -lecore_file -leet -lefreet" \
#			E_FM_OP_LIBS="-L${LOCALBASE}/lib -lecore_file -lecore_con -lecore -lglib-2.0 -lintl -liconv -leina" \
#			E_FM_OP_CFLAGS="-I${LOCALBASE}/include/ecore-1 -I${LOCALBASE}/include/glib-2.0 -I${LOCALBASE}/lib/glib-2.0/include -I${LOCALBASE}/include/eina-1 -I${LOCALBASE}/include/eina-1/eina" \
#			E_FM_OPEN_LIBS="-L${LOCALBASE}/lib -lecore_ipc -lecore_con -lecore -lglib-2.0 -lintl -liconv -leina" \
#			E_FM_OPEN_CFLAGS="-I${LOCALBASE}/include/ecore-1 -I${LOCALBASE}/include/glib-2.0 -I${LOCALBASE}/lib/glib-2.0/include -I${LOCALBASE}/include/eina-1 -I${LOCALBASE}/include/eina-1/eina" \
#			E_SYS_CFLAGS="-I${LOCALBASE}/include/eina-1 -I${LOCALBASE}/include/eina-1/eina" \
#			E_SYS_LIBS="-L${LOCALBASE}/lib -leina" \
#			E_INIT_CFLAGS="-I${LOCALBASE}/include/edje-1 -I${LOCALBASE}/include -I${LOCALBASE}/include/embryo-1 -I${LOCALBASE}/include/ecore-1 -I${LOCALBASE}/include/evas-1 -I${LOCALBASE}/include/eet-1 -I${X11BASE}/include -I${X11BASE}/include/freetype2 -I${LOCALBASE}/include/glib-2.0 -I${LOCALBASE}/lib/glib-2.0/include -I${LOCALBASE}/include/eina-1 -I${LOCALBASE}/include/eina-1/eina" \
#			E_INIT_LIBS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lecore_x -lecore_evas -lecore_ipc -lecore_con -lecore_input -ledje -lecore_imf_evas -lecore_imf -llua -lm -lembryo -lecore -lglib-2.0 -lintl -liconv -levas -lfontconfig -lexpat -lfreetype -lz -leet -leina"
CONFIGURE_ENV +=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

USE_LIBTOOL =		Yes

# Stupid crap in /src/modules/illume/dicts chokes in regular make.
# Some issue with the "(US)" bit
USE_GMAKE =		Yes

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH OSREV VERSION

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/enlightenment
	mv ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/

.include <bsd.port.mk>
