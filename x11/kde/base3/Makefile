# $OpenBSD: Makefile,v 1.66 2006/10/28 11:52:13 espie Exp $

COMMENT= 		"K Desktop Environment, basic applications"
COMMENT-plugins=	"Konqueror nsplugins, essentially native JDK"
COMMENT-samba=		"K Desktop Environment, samba support"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.5
DISTNAME=		kdebase-${VERSION}
PKGNAME=		${DISTNAME}
PKGNAME-samba=		kdesamba-${VERSION}
MODKDE_VERSION?=	3.5.3
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
SHARED_LIBS +=	kateinterfaces       1.0      # .0.0
SHARED_LIBS +=	taskmanager          2.0      # .1.0
SHARED_LIBS +=	taskbar              4.0      # .3.0
SHARED_LIBS +=	kasbar               2.0      # .1.0

MULTI_PACKAGES=		-samba
SUBPACKAGE?=
FLAVORS=		debug

BUILD_DEPENDS+=::devel/pkgconfig

WANTLIB+=ICE Xrender SM pthread util X11 m z png jpeg art_lgpl_2 Xext idn iconv

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == ""
LIB_DEPENDS+= kdecore.>=6,kabc,katepartinterfaces,kdefakes,kdefx,kdnssd,kdeprint,kdeprint_management,kdesu,kdeui,khtml,kio,kjs,knewstuff,kmid,kparts,kresources,kscreensaver,ktexteditor,kutils,kwalletclient,DCOP,vcard,artskde::x11/kde/libs3 \
	lber,ldap.>=2:openldap-client-2.*:databases/openldap \
	sasl2::security/cyrus-sasl2 \
	usb::devel/libusb
LIB_DEPENDS+= \
	glib-2.0,gmodule-2.0,gthread-2.0::devel/glib2
WANTLIB+=	Xcursor Xrandr Xss Xt Xtst Xxf86misc \
		artsflow artsflow_idl audiofile c crypto esd \
		freetype intl kmedia2_idl mad mcop ogg ossaudio \
		pcre pcreposix qtmcop soundserver_idl ssl stdc++ \
		vorbis vorbisenc vorbisfile xkbfile GLU fontenc \
		Xinerama Xft Xfixes fontconfig GL Xcomposite Xdamage \
		Half Imath IlmImf Iex Xdmcp Xau

.endif

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == "-samba"
LIB_DEPENDS+=	lib/samba/smbclient:samba->=3:net/samba
LIB_DEPENDS+=	DCOP,kdecore.>=6,kio,kdeui,kdefx,kdesu,kwalletclient::x11/kde/libs3
.endif

SEPARATE_BUILD=	flavored
EXTRA_CONFIG=	xdg/menus/kde-settings.menu \
		xdg/menus/kde-information.menu \
		xdg/menus/kde-screensavers.menu \
		xdg/menus/applications-merged/kde-essential.menu \
		ksysguarddrc


CONFIGURE_ENV+= PKG_CONFIG_PATH=${X11BASE}/lib/pkgconfig

SAMPLECONFDIR=${PREFIX}/share/apps/kde-conf-sample

SUBST_VARS=EXTRA_CONFIG SAMPLECONFDIR

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKBUILD}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec

FAKE_FLAGS=${MAKE_FLAGS} DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static

.include <bsd.port.mk>
