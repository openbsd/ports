# $OpenBSD: Makefile,v 1.25 2004/02/01 14:59:22 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
COMMENT-plugins=	"nsplugins, essentially native jdk"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		kdebase-${VERSION}
MODKDE_VERSION?=	3.2

FLAVORS=		debug
LIB_DEPENDS= kdecore.4,DCOP,artskde,kabc,katepartinterfaces,kdefakes,kdefx,kdeprint,kdeprint_management,kdesasl,kdesu,kdeui,khtml,kio,kmid,kparts,kscreensaver,kscript,kspell,ktexteditor,kutils,vcard::x11/kde/libs3 \
		ldap.2,lber:openldap-client-2.*:databases/openldap \


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
