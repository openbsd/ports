# $OpenBSD: Makefile,v 1.47 2005/11/03 15:56:57 espie Exp $

COMMENT= 		"K Desktop Environment, basic applications"
COMMENT-plugins=	"Konqueror nsplugins, essentially native JDK"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
DISTNAME=		kdebase-${VERSION}
PKGNAME=		${DISTNAME}p1
MODKDE_VERSION?=	3.4

FLAVORS=		debug
LIB_DEPENDS= kdecore.6,kabc,katepartinterfaces,kdefakes,kdefx,kdnssd,kdeprint,kdeprint_management,kdesu,kdeui,khtml,kio,kjs,knewstuff,kmid,kmdi2,kparts,kresources,kscreensaver,kscript,ktexteditor,kutils,kwalletclient,DCOP,vcard,artskde::x11/kde/libs3 \
	lber,ldap.2:openldap-client-2.*:databases/openldap \
	sasl2::security/cyrus-sasl2 \
	usb::devel/libusb

BUILD_DEPENDS+=::devel/pkgconfig

SEPARATE_BUILD=	flavored
EXTRA_CONFIG=	xdg/menus/kde-settings.menu \
		xdg/menus/kde-information.menu \
		xdg/menus/kde-screensavers.menu \
		xdg/menus/applications-merged/kde-essential.menu \
		ksysguarddrc

LIB_DEPENDS+= \
	glib-2.0.0.0,gmodule-2.0.0.0,gthread-2.0.0.0::devel/glib2

.if !defined(PACKAGING)
LIB_DEPENDS+=	lib/samba/smbclient:samba->=3:net/samba
.endif


CONFIGURE_ENV+= PKG_CONFIG_PATH=${X11BASE}/lib/pkgconfig

SAMPLECONFDIR=${PREFIX}/share/apps/kde-conf-sample

SUBST_VARS=EXTRA_CONFIG SAMPLECONFDIR

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKBUILD}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}

#CONFIGURE_ARGS+=--without-motif

WANTLIB=	ICE SM X11 Xcursor Xext Xrandr Xrender Xss Xt Xtst Xxf86misc \
		art_lgpl_2 artsflow artsflow_idl audiofile c crypto esd \
		freetype iconv intl jpeg kmedia2_idl m mad mcop ogg ossaudio \
		pcre pcreposix png pthread qtmcop soundserver_idl ssl stdc++ \
		util vorbis vorbisenc vorbisfile xkbfile z GLU fontenc \
		Xinerama Xft Xfixes fontconfig GL Xcomposite Xdamage \
		Half Imath IlmImf Iex

.include <bsd.port.mk>
