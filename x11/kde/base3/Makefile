# $OpenBSD: Makefile,v 1.129 2014/04/29 22:09:43 zhuk Exp $

COMMENT-main =		K Desktop Environment, basic applications
COMMENT-samba =		K Desktop Environment, samba support
COMMENT-en_US =		K Desktop Environment, en_US locale data
COMMENT-locale =	K Desktop Environment, locale data files
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdebase-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-samba =		kdesamba-${VERSION}
PKGNAME-en_US =		kde3-locale-en_US-${VERSION}
PKGNAME-locale =	kde3-locale-${VERSION}
PKG_ARCH-en_US =	*
PKG_ARCH-locale =	*
REVISION-main =		36
REVISION-samba =	13
REVISION-en_US =	0
REVISION-locale =	0

MODKDE_VERSION =	3.5.8

SHARED_LIBS +=	konq                 7.0      # .6.0
SHARED_LIBS +=	kateutils            1.0      # .0.0
SHARED_LIBS +=	kateinterfaces       1.0      # .0.0
SHARED_LIBS +=	khotkeys_shared      2.0      # .1.0
SHARED_LIBS +=	ksplashthemes        1.0      # .0.0
SHARED_LIBS +=	ksgrd                4.0      # .3.0
SHARED_LIBS +=	kdecorations         2.0      # .1.0
SHARED_LIBS +=	konqsidebarplugin    4.0      # .3.0
SHARED_LIBS +=	kickermain           2.0      # .1.0
SHARED_LIBS +=	taskmanager          2.0      # .1.0
SHARED_LIBS +=	taskbar              4.0      # .3.0
SHARED_LIBS +=	kasbar               2.0      # .1.0
SHARED_LIBS +=	kfontinst            1.0      # .0.0

MULTI_PACKAGES =	-main -samba -en_US -locale

MODULES =		x11/kde devel/gettext

BUILD_DEPENDS =		devel/imake

RUN_DEPENDS-en_US =
RUN_DEPENDS-locale =
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			kde3-locale-en_US-*|kde4-locale-en_US-*:${BUILD_PKGPATH},-en_US \
			kde3-locale-*|kde4-locale-*:${BUILD_PKGPATH},-locale \
			devel/desktop-file-utils \
			x11/gtk+2,-guic \
			x11/kde-shared-data

LIB_DEPENDS =		openldap-client->=2,<3:databases/openldap \
			security/cyrus-sasl2
LIB_DEPENDS-en_US =
LIB_DEPENDS-locale =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/kde/libs3 \
			devel/libusb-compat \
			devel/glib2
LIB_DEPENDS-samba =	${LIB_DEPENDS} \
			x11/kde/libs3 \
			net/samba>=3

WANTLIB =  crypto expat m pthread pthread-stubs ssl stdc++ util z
WANTLIB += ICE SM X11 Xext Xfixes Xrender Xt freetype fontconfig xcb
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
WANTLIB += art_lgpl_2 fam idn lber-2.4 ldap-2.4 png sasl2

WANTLIB-main =  ${WANTLIB} c sndio
WANTLIB-main += GL GLU Half Iex IlmImf IlmThread Imath Xau Xcomposite
WANTLIB-main += Xcursor Xdamage Xdmcp Xfixes Xft Xi Xinerama Xmu
WANTLIB-main += Xrandr Xss Xtst Xxf86misc Xxf86vm X11-xcb drm
WANTLIB-main += glapi xcb-dri2 xcb-glx xkbfile
WANTLIB-main += ${KDE}/artsflow ${KDE}/artsflow_idl ${KDE}/artskde
WANTLIB-main += ${KDE}/kabc ${KDE}/katepartinterfaces ${KDE}/kdefakes
WANTLIB-main += ${KDE}/kdeprint ${KDE}/kdeprint_management
WANTLIB-main += ${KDE}/kdnssd ${KDE}/khtml ${KDE}/kjs
WANTLIB-main += ${KDE}/kmedia2_idl ${KDE}/kmid ${KDE}/knewstuff
WANTLIB-main += ${KDE}/kparts ${KDE}/kresources ${KDE}/kscreensaver
WANTLIB-main += ${KDE}/soundserver_idl ${KDE}/ktexteditor ${KDE}/kutils
WANTLIB-main += ${KDE}/vcard
WANTLIB-main += FLAC audiofile avahi-client avahi-common dbus-1 dns_sd
WANTLIB-main += glib-2.0 gmodule-2.0 gthread-2.0 jpeg lcms mad mcop mng
WANTLIB-main += ogg pcre pcreposix qtmcop usb usb-1.0 vorbis vorbisenc
WANTLIB-main += vorbisfile

WANTLIB-samba =  ${WANTLIB} execinfo
WANTLIB-samba += lib/samba/smbclient talloc tdb lib/samba/wbclient

WANTLIB-en_US =
WANTLIB-locale =

SEPARATE_BUILD =	flavored
SUBST_VARS =		PREFIX

post-install:
	${INSTALL_DATA} ${FILESDIR}/kdesurc ${PREFIX}/${MODKDE_CONFIG_SUBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common
	rm -R ${PREFIX}/share/desktop-directories
	find ${PREFIX}/share/icons -name 'knetattach*' | xargs rm

.include <bsd.port.mk>
