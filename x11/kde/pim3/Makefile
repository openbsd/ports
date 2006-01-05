# $OpenBSD: Makefile,v 1.29 2006/01/05 19:36:56 espie Exp $

COMMENT= 		"KDE personal information applications"
COMMENT-kpilot=		"KDE interface to sync with Palm Pilot"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.5.0
DISTNAME=		kdepim-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5
SHARED_LIBS=		gpgme++				2.0 \
			index				0.0 \
			kabc_groupdav			1.0 \
			kabc_groupwise			1.0 \
			kabc_newexchange		1.0 \
			kabc_slox			0.0 \
			kabc_xmlrpc			1.0 \
			kabckolab			0.0 \
			kabinterfaces			1.0 \
			kaddressbook			0.0 \
			kcal				2.0 \
			kcal_blogging			1.0 \
			kcal_groupdav			1.0 \
			kcal_groupwise			1.0 \
			kcal_newexchange		1.0 \
			kcal_resourcefeatureplan	1.0 \
			kcal_resourceremote		1.0 \
			kcal_slox			0.0 \
			kcal_xmlrpc			1.0 \
			kcalkolab			0.0 \
			kdepim				1.0 \
			kgantt				0.2 \
			kgroupwarebase			0.0 \
			kgroupwaredav			0.0 \
			kholidays			1.0 \
			kitchensyncui			0.0 \
			kleopatra			1.0 \
			kmime				4.0 \
			knotes_xmlrpc			1.0 \
			knoteskolab			0.0 \
			kocorehelper			1.0 \
			kode				1.0 \
			konnector			0.0 \
			kontact				1.0 \
			korg_stdprinting		1.0 \
			korganizer			1.0 \
			korganizer_calendar		1.0 \
			korganizer_eventviewer		1.0 \
			kpgp				4.0 \
			kpilot				0.0 \
			kpimexchange			1.0 \
			kpimidentities			1.0 \
			kpinterfaces			1.0 \
			ksieve				0.0 \
			kslox				0.0 \
			ksync				1.0 \
			ksync2				0.0 \
			ktnef				1.0 \
			mimelib				1.1 \
			multisynk			0.0 \
			qgpgme				0.0



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

USE_LIBTOOL=Yes
LIBTOOL_FLAGS+=--tag disable-static
SEPARATE_BUILD=	flavored
.include <bsd.port.mk>
