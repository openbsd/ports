# $OpenBSD: Makefile,v 1.30 2004/07/24 12:47:14 espie Exp $

COMMENT= 		"K Desktop Environment, basic applications"
COMMENT-plugins=	"Konqueror nsplugins, essentially native JDK"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.3
DISTNAME=		kdebase-${VERSION}
MODKDE_VERSION?=	3.2.3

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

.include <bsd.port.mk>
