# $OpenBSD: Makefile,v 1.37 2005/02/07 11:30:05 espie Exp $

COMMENT= 		"K Desktop Environment, basic applications"
COMMENT-plugins=	"Konqueror nsplugins, essentially native JDK"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdebase-${VERSION}
PKGNAME=		${DISTNAME}p2
MODKDE_VERSION?=	3.3.0

FLAVORS=		debug
LIB_DEPENDS= kdecore.6,kabc,katepartinterfaces,kdefakes,kdefx,kdeprint,kdeprint_management,kdesasl,kdesu,kdeui,khtml,kio,kjs,kmdi,kmid,kparts,kresources,kscreensaver,kscript,ktexteditor,kutils,kwalletclient,DCOP,vcard,artskde::x11/kde/libs3 \
	lber,ldap.2:openldap-client-2.*:databases/openldap



SEPARATE_BUILD=	flavored
EXTRA_CONFIG=	xdg/menus/kde-settings.menu \
		xdg/menus/kde-information.menu \
		xdg/menus/kde-screensavers.menu \
		xdg/menus/applications-merged/kde-essential.menu \
		ksysguarddrc

#MULTI_PACKAGES=-plugins
FULLPKGNAME-plugins=kdensplugins-${VERSION}

SUBPACKAGE?=
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-plugins"
LIB_DEPENDS+= Xm::x11/openmotif \
	glib-2.0.0.0,gmodule-2.0.0.0,gthread-2.0.0.0::devel/glib2
.endif


SAMPLECONFDIR=${PREFIX}/share/apps/kde-conf-sample

SUBST_VARS=EXTRA_CONFIG SAMPLECONFDIR

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKBUILD}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}

CONFIGURE_ARGS+=--without-motif

WANTLIB=	ICE SM X11 Xcursor Xext Xrandr Xrender Xss Xt Xtst Xxf86misc \
		art_lgpl_2 artsflow artsflow_idl audiofile c crypto esd \
		freetype iconv intl jpeg kmedia2_idl m mad mcop ogg ossaudio \
		pcre pcreposix png pthread qtmcop soundserver_idl ssl stdc++ \
		util vorbis vorbisenc vorbisfile xkbfile z

.include <bsd.port.mk>
