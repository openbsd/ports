# $OpenBSD: Makefile,v 1.36 2002/04/10 01:24:39 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		2.2.2
DISTNAME=		kdebase-${VERSION}

LIB_DEPENDS=	kdecore.3,kdeui,DCOP,artskde,kab,kdefakes,kdeprint,kdeprint_management,kdesu,kfile,khtml,kio,kjava,kmid,kparts,kscreensaver,kspell,kssl,ksycoca,ktexteditor,soundserver_idl::x11/kde/libs2 \
		ldap.2,lber:openldap-client-2.*:databases/openldap \
		vorbis,vorbisenc::audio/libvorbis \
		cdda_paranoia,cdda_interface::audio/cdparanoia

BUILD_DEPENDS=	::x11/qt2-designer ::audio/lame

LAMEDIR=${WRKDIR}/lamestub

post-patch:
	mkdir -p ${LAMEDIR}
	cp ${FILESDIR}/lame.c ${LAMEDIR}

pre-build:
	cd ${LAMEDIR} && ${CC} -I${LOCALBASE}/include -o libmp3lame.so.0.0 -shared -fpic -O2 lame.c


MAKE_FLAGS+=LAMEDIR='${LAMEDIR}'

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKSRC}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec
	${INSTALL_DATA} ${LAMEDIR}/libmp3lame.so.0.0 ${PREFIX}/lib

.include <bsd.port.mk>
