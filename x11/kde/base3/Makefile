# $OpenBSD: Makefile,v 1.9 2002/07/16 12:20:42 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.2
DISTNAME=		kdebase-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,artskde,kabc,katepartinterfaces,kdefakes,kdefx,kdeprint,kdeprint_management,kdesasl,kdesu,kdeui,khtml,kio,kjava,kmid,kparts,kscreensaver,kscript,kspell,ktexteditor,vcard::x11/kde/libs3 \
		ldap.2,lber:openldap-client-2.*:databases/openldap \
		vorbis,vorbisenc::audio/libvorbis \
		cdda_paranoia,cdda_interface::audio/cdparanoia

BUILD_DEPENDS=	::audio/lame
SEPARATE_BUILD=	simple

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKBUILD}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec

.include <bsd.port.mk>
