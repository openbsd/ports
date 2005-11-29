# $OpenBSD: Makefile,v 1.28 2005/11/29 16:00:58 espie Exp $

COMMENT= 		"KDE personal information applications"
COMMENT-kpilot=		"KDE interface to sync with Palm Pilot"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.5.0
DISTNAME=		kdepim-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5

LIB_DEPENDS+= 		kdecore.6,artskde,kmedia2_idl,knewstuff,DCOP,kabc,kabc_file,kimproxy,kdefakes,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,kutils,kwalletclient,vcard::x11/kde/libs3

WANTLIB=	Xss audiofile stdc++ ossaudio X11 jpeg util m \
		vorbisfile gmodule-2.0.0.0 gthread-2.0.0.0 \
		pcreposix intl vorbisenc qui SM pthread \
		c artsflow ogg ncurses mcop png iconv Xext \
		artsflow_idl art_lgpl_2.0.0 mad qtmcop glib-2.0.0.0 \
		glib-2.0.0.0 ICE readline soundserver_idl Xrender \
		gpg-error vorbis pcre esd z sasl2

LIB_DEPENDS+=	pisock::comms/pilot-link
RUN_DEPENDS+=	::x11/kde/base3
LIB_DEPENDS+=	gpgme:gpgme->=0.4.5:security/gpgme \
		sasl2::security/cyrus-sasl2

#MULTI_PACKAGES=-kpilot
FULLPKGNAME-kpilot = kpilot-${VERSION}p0
SUBPACKAGE?=

#.if !defined(PACKAGING) || ${SUBPACKAGE} == "-kpilot"
#LIB_DEPENDS+=	pisock::comms/pilot-link
#LIB_DEPENDS+=	kcal::x11/kde/pim3
#.endif
## for kaddressbook
#.if defined(PACKAGING) && ${SUBPACKAGE} == ""
#RUN_DEPENDS+=	::x11/kde/base3
#.endif
#.if !defined(PACKAGING) || ${SUBPACKAGE} == ""
#LIB_DEPENDS+=	gpgme:gpgme->=0.4.5:security/gpgme
#.endif

SEPARATE_BUILD=	flavored
.include <bsd.port.mk>
