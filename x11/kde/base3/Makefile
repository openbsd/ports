# $OpenBSD: Makefile,v 1.60 2006/05/14 17:19:23 brad Exp $

COMMENT= 		"K Desktop Environment, basic applications"
COMMENT-plugins=	"Konqueror nsplugins, essentially native JDK"
COMMENT-samba=		"K Desktop Environment, samba support"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.2
DISTNAME=		kdebase-${VERSION}
PKGNAME=		${DISTNAME}
PKGNAME-samba=		kdesamba-${VERSION}p1
MODKDE_VERSION?=	3.5.2
SHARED_LIBS=		kasbar			2.0 \
			kateinterfaces		1.0 \
			kateutils		1.0 \
			kdecorations		2.0 \
			kfontinst		1.0 \
			khotkeys_shared		2.0 \
			kickermain		2.0 \
			konq			7.0 \
			konqsidebarplugin	4.0 \
			ksgrd			4.0 \
			ksplashthemes		1.0 \
			taskbar			4.0 \
			taskmanager		2.0

MULTI_PACKAGES=		-samba
SUBPACKAGE?=
FLAVORS=		debug

BUILD_DEPENDS+=::devel/pkgconfig

WANTLIB+=ICE Xrender SM pthread util X11 m z png jpeg art_lgpl_2 Xext 

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == ""
LIB_DEPENDS+= kdecore.6,kabc,katepartinterfaces,kdefakes,kdefx,kdnssd,kdeprint,kdeprint_management,kdesu,kdeui,khtml,kio,kjs,knewstuff,kmid,kparts,kresources,kscreensaver,ktexteditor,kutils,kwalletclient,DCOP,vcard,artskde::x11/kde/libs3 \
	lber,ldap.2:openldap-client-2.*:databases/openldap \
	sasl2::security/cyrus-sasl2 \
	usb::devel/libusb
LIB_DEPENDS+= \
	glib-2.0.0.0,gmodule-2.0.0.0,gthread-2.0.0.0::devel/glib2
WANTLIB+=	Xcursor Xrandr Xss Xt Xtst Xxf86misc \
		artsflow artsflow_idl audiofile c crypto esd \
		freetype iconv intl kmedia2_idl mad mcop ogg ossaudio \
		pcre pcreposix qtmcop soundserver_idl ssl stdc++ \
		vorbis vorbisenc vorbisfile xkbfile GLU fontenc \
		Xinerama Xft Xfixes fontconfig GL Xcomposite Xdamage \
		Half Imath IlmImf Iex Xdmcp Xau

.endif

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == "-samba"
LIB_DEPENDS+=	lib/samba/smbclient:samba->=3:net/samba
LIB_DEPENDS+=	DCOP,kdecore.6,kio,kdeui,kdefx,kdesu,kwalletclient::x11/kde/libs3
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
