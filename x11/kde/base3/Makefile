# $OpenBSD: Makefile,v 1.128 2014/04/21 20:43:51 sthen Exp $

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
REVISION-main =		35
REVISION-samba =	12
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

LIB_DEPENDS-en_US =
LIB_DEPENDS-locale =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/kde/libs3 \
			openldap-client->=2,<3:databases/openldap \
			security/cyrus-sasl2 \
			devel/libusb-compat \
			devel/glib2
LIB_DEPENDS-samba =	${LIB_DEPENDS} \
			x11/kde/libs3 \
			net/samba>=3

WANTLIB = ICE SM X11 Xext Xrender art_lgpl_2 idn \
	lib/kde3/DCOP lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kio lib/kde3/kwalletclient m png \
	stdc++ util xcb z fam pthread-stubs

WANTLIB-main = ${WANTLIB}
WANTLIB-main += FLAC GL GLU Half Iex IlmImf IlmThread Imath X11-xcb
WANTLIB-main += Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xft Xi
WANTLIB-main += Xinerama Xmu Xrandr Xss Xt Xtst Xxf86misc Xxf86vm audiofile
WANTLIB-main += avahi-client avahi-common c crypto dbus-1 dns_sd drm
WANTLIB-main += expat fontconfig freetype glapi glib-2.0 gmodule-2.0
WANTLIB-main += gthread-2.0 jpeg lber-2.4 lcms ldap-2.4 mad mcop mng
WANTLIB-main += ogg pcre pcreposix pthread qtmcop sasl2 sndio soundserver_idl
WANTLIB-main += ssl usb usb-1.0 vcard vorbis vorbisenc vorbisfile xcb-dri2
WANTLIB-main += xcb-glx xkbfile
WANTLIB-main += lib/kde3/artsflow lib/kde3/artsflow_idl lib/kde3/artskde
WANTLIB-main += lib/kde3/kabc lib/kde3/katepartinterfaces lib/kde3/kdefakes
WANTLIB-main += lib/kde3/kdeprint lib/kde3/kdeprint_management lib/kde3/kdnssd
WANTLIB-main += lib/kde3/khtml lib/kde3/kjs lib/kde3/kmedia2_idl lib/kde3/kmid
WANTLIB-main += lib/kde3/knewstuff lib/kde3/kparts lib/kde3/kresources
WANTLIB-main += lib/kde3/kscreensaver lib/kde3/ktexteditor lib/kde3/kutils

WANTLIB-samba = ${WANTLIB} execinfo lib/samba/smbclient pthread talloc tdb \
	lib/samba/wbclient Xfixes Xt expat fontconfig freetype

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
