# $OpenBSD: Makefile,v 1.21 2003/04/12 15:37:01 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.1a
DISTNAME=		kdebase-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,artskde,kabc,katepartinterfaces,kdefakes,kdefx,kdeprint,kdeprint_management,kdesasl,kdesu,kdeui,khtml,kio,kmid,kparts,kscreensaver,kscript,kspell,ktexteditor,kutils,vcard::x11/kde/libs3 \
		ldap.2,lber:openldap-client-2.*:databases/openldap \

SEPARATE_BUILD=	flavored

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKBUILD}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/ksysguarddrc ${PREFIX}/share/config/ksysguarddrc.sample

CONFIGURE_ARGS+=--without-motif

.include <bsd.port.mk>
