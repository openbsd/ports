# $OpenBSD: Makefile,v 1.37 2006/10/12 23:12:19 espie Exp $

COMMENT= 		"KDE personal information applications"
COMMENT-kpilot=		"KDE interface to sync with Palm Pilot"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.5.5
DISTNAME=		kdepim-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5.3
SHARED_LIBS=		gpgme++				3.0 \
			index				1.0 \
			kabc_groupdav			2.0 \
			kabc_groupwise			2.0 \
			kabc_newexchange		2.0 \
			kabc_slox			1.0 \
			kabc_xmlrpc			2.0 \
			kabckolab			1.0 \
			kabinterfaces			2.0 \
			kaddressbook			1.0 \
			kcal				4.0 \
			kcal_blogging			2.0 \
			kcal_groupdav			2.0 \
			kcal_groupwise			2.0 \
			kcal_newexchange		2.0 \
			kcal_resourcefeatureplan	2.0 \
			kcal_resourceremote		2.0 \
			kcal_slox			1.0 \
			kcal_xmlrpc			2.0 \
			kcalkolab			1.0 \
			kdepim				2.0 \
			kgantt				1.0 \
			kgroupwarebase			1.0 \
			kgroupwaredav			1.0 \
			kholidays			2.0 \
			kitchensyncui			1.0 \
			kleopatra			2.0 \
			kmime				5.0 \
			knotes_xmlrpc			2.0 \
			knoteskolab			1.0 \
			kocorehelper			2.0 \
			kode				2.0 \
			konnector			1.0 \
			kontact				2.0 \
			korg_stdprinting		2.0 \
			korganizer			2.0 \
			korganizer_calendar		2.0 \
			korganizer_eventviewer		2.0 \
			kpgp				5.0 \
			kpilot				1.0 \
			kpimexchange			2.0 \
			kpimidentities			2.0 \
			kpinterfaces			2.0 \
			ksieve				1.0 \
			kslox				1.0 \
			ksync				2.0 \
			ksync2				1.0 \
			ktnef				2.0 \
			mimelib				2.1 \
			multisynk			1.0 \
			qgpgme				1.0



LIB_DEPENDS+= 		kdecore.>=6,artskde,kmedia2_idl,knewstuff,DCOP,kabc,kabc_file,kimproxy,kdefakes,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,kutils,kwalletclient,vcard::x11/kde/libs3

WANTLIB=	Xss audiofile stdc++ ossaudio X11 jpeg util m \
		vorbisfile gmodule-2.0 gthread-2.0 \
		pcreposix intl vorbisenc qui SM pthread \
		c artsflow ogg ncurses mcop png iconv Xext \
		artsflow_idl art_lgpl_2 mad qtmcop glib-2.0 \
		glib-2.0 ICE readline soundserver_idl Xrender \
		gpg-error vorbis pcre esd z sasl2 idn

FLAVORS=	debug
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

USE_LIBTOOL=Yes
LIBTOOL_FLAGS+=--tag disable-static
#SEPARATE_BUILD=	flavored
.include <bsd.port.mk>
