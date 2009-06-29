# $OpenBSD: Makefile,v 1.89 2009/06/29 15:05:02 naddy Exp $

COMMENT-main = 		K Desktop Environment, basic applications
COMMENT-plugins =	Konqueror nsplugins, essentially native JDK
COMMENT-samba =		K Desktop Environment, samba support
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdebase-${VERSION}
PKGNAME-main =		${DISTNAME}p2
PKGNAME-samba =		kdesamba-${VERSION}
MODKDE_VERSION ?=	3.5.8
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

LIB_DEPENDS =	kdecore.>=6,DCOP,kio,kdeui,kdefx,kdesu,kwalletclient::x11/kde/libs3
WANTLIB =	ICE Xrender SM util X11 m z png jpeg art_lgpl_2 Xext idn iconv fam rpcsvc intl stdc++ Xdmcp Xau 

RUN_DEPENDS-main =${RUN_DEPENDS} \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-main = ${LIB_DEPENDS} \
		kabc,katepartinterfaces,kdefakes,kdnssd,kdeprint,kdeprint_management,khtml,kjs,knewstuff,kmid,kparts,kresources,kscreensaver,ktexteditor,kutils,vcard,artskde::x11/kde/libs3 \
		lber,ldap.>=2:openldap-client->=2,<3:databases/openldap \
		sasl2::security/cyrus-sasl2 \
		usb::devel/libusb \
		glib-2.0,gmodule-2.0,gthread-2.0::devel/glib2
WANTLIB-main =	${WANTLIB} \
		Xcursor Xrandr Xss Xt Xtst Xxf86misc \
		artsflow artsflow_idl audiofile c crypto \
		freetype kmedia2_idl mad mcop ogg \
		pcre pcreposix qtmcop soundserver_idl sndio ssl \
		vorbis vorbisenc vorbisfile xkbfile GLU \
		Xinerama Xft Xfixes fontconfig GL Xcomposite Xdamage \
		Half Imath IlmImf IlmThread Iex asn1 com_err gssapi krb5 \
		expat pthread 


LIB_DEPENDS-samba = ${LIB_DEPENDS} \
		lib/samba/smbclient:samba->=3:net/samba

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

FAKE_FLAGS =	sysconfdir=${SAMPLECONFDIR}

.include <bsd.port.mk>
