# $OpenBSD: Makefile,v 1.6 2002/04/10 01:24:39 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kdebase-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,artskde,kabc,katepartinterfaces,kdefakes,kdefx,kdeprint,kdeprint_management,kdesasl,kdesu,kdeui,khtml,kio,kjava,kmid,kparts,kscreensaver,kscript,kspell,ktexteditor,vcard::x11/kde/libs3 \
		ldap.2,lber:openldap-client-2.*:databases/openldap \
		vorbis,vorbisenc::audio/libvorbis \
		cdda_paranoia,cdda_interface::audio/cdparanoia

BUILD_DEPENDS=	::audio/lame

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKSRC}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec

.include <bsd.port.mk>
