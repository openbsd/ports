# $OpenBSD: Makefile,v 1.97 2010/07/08 21:28:49 espie Exp $

COMMENT-main = 		K Desktop Environment, basic applications
COMMENT-plugins =	Konqueror nsplugins, essentially native JDK
COMMENT-samba =		K Desktop Environment, samba support
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdebase-${VERSION}
PKGNAME-main =		${DISTNAME}p10
PKGNAME-samba =		kdesamba-${VERSION}p2
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

MULTI_PACKAGES =	-main -samba
FLAVORS =		debug

MODULES =	x11/kde devel/gettext

LIB_DEPENDS =	::x11/kde/libs3
WANTLIB = ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 fam idn jpeg \
	lib/kde3/DCOP lib/kde3/kdecore.>=6 lib/kde3/kdefx lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kio lib/kde3/kwalletclient m png pthread-stubs \
	stdc++ util xcb z

RUN_DEPENDS-main =${RUN_DEPENDS} \
		:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS-main = ${LIB_DEPENDS} \
		::x11/kde/libs3 \
		:openldap-client->=2,<3:databases/openldap \
		::security/cyrus-sasl2 \
		::devel/libusb \
		::devel/glib2
WANTLIB-main = ${WANTLIB} GL GLU Half Iex IlmImf IlmThread Imath Xcomposite \
	Xcursor Xdamage Xdamage Xfixes Xfixes Xft Xi Xinerama Xmu Xrandr Xss \
	Xt Xtst Xxf86misc Xxf86vm Xxf86vm asn1 audiofile c com_err crypto drm \
	drm expat fontconfig freetype glib-2.0 gmodule-2.0 gssapi gthread-2.0 \
	krb5 lber-2.3 lcms ldap-2.3 lib/kde3/artsflow lib/kde3/artsflow_idl \
	lib/kde3/artskde lib/kde3/kabc lib/kde3/katepartinterfaces \
	lib/kde3/kdefakes lib/kde3/kdeprint lib/kde3/kdeprint_management \
	lib/kde3/kdnssd lib/kde3/khtml lib/kde3/kjs lib/kde3/kmedia2_idl \
	lib/kde3/kmid lib/kde3/knewstuff lib/kde3/kparts lib/kde3/kresources \
	lib/kde3/kscreensaver lib/kde3/ktexteditor lib/kde3/kutils mad mcop \
	mng ogg pcre pcreposix pthread qtmcop sasl2 sndio soundserver_idl ssl \
	usb vcard vorbis vorbisenc vorbisfile xkbfile


LIB_DEPENDS-samba = ${LIB_DEPENDS} \
		:samba->=3:net/samba
WANTLIB-samba = ${WANTLIB} execinfo lib/samba/smbclient pthread talloc tdb \
	wbclient

SEPARATE_BUILD =	flavored
EXTRA_CONFIG =	xdg/menus/kde-settings.menu \
		xdg/menus/kde-information.menu \
		xdg/menus/kde-screensavers.menu \
		xdg/menus/applications-merged/kde-essential.menu \
		ksysguarddrc


CONFIGURE_ENV += PKG_CONFIG_PATH=${X11BASE}/lib/pkgconfig

SAMPLECONFDIR = ${PREFIX}/share/apps/kde-conf-sample

SUBST_VARS = EXTRA_CONFIG SAMPLECONFDIR

post-install:
	${INSTALL_DATA} ${FILESDIR}/kdesurc ${PREFIX}/share/config
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	@${post_install_libs}

FAKE_FLAGS =	sysconfdir=${SAMPLECONFDIR}

.include <bsd.port.mk>
