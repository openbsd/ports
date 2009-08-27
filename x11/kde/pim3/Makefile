# $OpenBSD: Makefile,v 1.60 2009/08/27 19:44:38 ajacoutot Exp $

COMMENT = 		KDE personal information applications
COMMENT-kpilot =	KDE interface to sync with Palm Pilot
CATEGORIES =		x11 x11/kde productivity
VERSION =		3.5.10
DISTNAME =		kdepim-${VERSION}
PKGNAME =		${DISTNAME}p2
MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	index                1.0      # .0.0
SHARED_LIBS +=	kgantt               1.0      # .0.2
SHARED_LIBS +=	kode                 2.0      # .1.0
SHARED_LIBS +=	ktnef                2.0      # .1.0
SHARED_LIBS +=	gpgme++              3.0      # .2.0
SHARED_LIBS +=	qgpgme               1.0      # .0.0
SHARED_LIBS +=	kholidays            2.0      # .1.0
SHARED_LIBS +=	kmime                5.0      # .4.0
SHARED_LIBS +=	kpgp                 5.0      # .4.0
SHARED_LIBS +=	ksieve               1.0      # .0.0
SHARED_LIBS +=	mimelib              2.1      # .1.1
SHARED_LIBS +=	kcal                 4.0      # .2.0
SHARED_LIBS +=	kleopatra            2.0      # .1.0
SHARED_LIBS +=	kdepim               2.0      # .1.0
SHARED_LIBS +=	kpilot               1.0      # .0.0
SHARED_LIBS +=	ksync                2.0      # .1.0
SHARED_LIBS +=	kpimidentities       2.0      # .1.0
SHARED_LIBS +=	kpimexchange         2.0      # .1.0
SHARED_LIBS +=	knodecommon          0.0      # .3.0
SHARED_LIBS +=	ksync2               1.0      # .0.0
SHARED_LIBS +=	konnector            1.0      # .0.0
SHARED_LIBS +=	kitchensyncui        1.0      # .0.0
SHARED_LIBS +=	multisynk            1.0      # .0.0
SHARED_LIBS +=	kocorehelper         2.0      # .1.0
SHARED_LIBS +=	korg_stdprinting     2.0      # .1.0
SHARED_LIBS +=	korganizer_eventviewer 2.0      # .1.0
SHARED_LIBS +=	korganizer_calendar  2.0      # .1.0
SHARED_LIBS +=	korganizer           2.0      # .1.0
SHARED_LIBS +=	kabinterfaces        2.0      # .1.0
SHARED_LIBS +=	kaddressbook         1.0      # .0.0
SHARED_LIBS +=	kgroupwarebase       1.0      # .0.0
SHARED_LIBS +=	kgroupwaredav        1.0      # .0.0
SHARED_LIBS +=	kcal_resourceremote  2.0      # .1.0
SHARED_LIBS +=	kabc_xmlrpc          2.0      # .1.0
SHARED_LIBS +=	kcal_xmlrpc          2.0      # .1.0
SHARED_LIBS +=	knotes_xmlrpc        2.0      # .1.0
SHARED_LIBS +=	kabckolab            1.0      # .0.0
SHARED_LIBS +=	knoteskolab          1.0      # .0.0
SHARED_LIBS +=	kcalkolab            1.0      # .0.0
SHARED_LIBS +=	kslox                1.0      # .0.0
SHARED_LIBS +=	kcal_slox            1.0      # .0.0
SHARED_LIBS +=	kabc_slox            1.0      # .0.0
SHARED_LIBS +=	gwsoap               0.0      # .0.0
SHARED_LIBS +=	kcal_groupwise       2.0      # .1.0
SHARED_LIBS +=	kabc_groupwise       2.0      # .1.0
SHARED_LIBS +=	kcal_resourcefeatureplan 2.0      # .1.0
SHARED_LIBS +=	kcal_groupdav        2.0      # .1.0
SHARED_LIBS +=	kabc_groupdav        2.0      # .1.0
SHARED_LIBS +=	kcal_newexchange     2.0      # .1.0
SHARED_LIBS +=	kabc_newexchange     2.0      # .1.0
SHARED_LIBS +=	kabcscalix           0.0      # .0.0
SHARED_LIBS +=	kcalscalix           0.0      # .0.0
SHARED_LIBS +=	knotesscalix         0.0      # .0.0
SHARED_LIBS +=	kpinterfaces         2.0      # .1.0
SHARED_LIBS +=	kontact              2.0      # .1.0

MODULES =	x11/kde devel/gettext

LIB_DEPENDS +=	kdecore.>=6,artskde,kmedia2_idl,knewstuff,DCOP,kabc,kabc_file,kimproxy,kdefakes,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,kutils,kwalletclient,vcard::x11/kde/libs3

WANTLIB =	Xss audiofile stdc++ sndio X11 jpeg util m \
		vorbisfile gmodule-2.0 gthread-2.0 \
		pcreposix vorbisenc qui SM pthread \
		c artsflow ogg mcop png Xext \
		artsflow_idl art_lgpl_2 mad qtmcop \
		glib-2.0 ICE soundserver_idl Xrender \
		gpg-error vorbis pcre z sasl2 idn \
		Xau Xdmcp fam rpcsvc Xpm usb ical \
		pthread-stubs xcb

FLAVORS =	debug
LIB_DEPENDS +=	pisock::comms/pilot-link
RUN_DEPENDS +=	::x11/kde/base3 \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS +=	gpgme:gpgme->=0.4.5:security/gpgme \
		sasl2::security/cyrus-sasl2 \
		mal.>=1::comms/libmal \
		gnokii::comms/gnokii

#MULTI_PACKAGES=-kpilot
FULLPKGNAME-kpilot = kpilot-${VERSION}p0

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

# make sure we do not grab boost on the way
CONFIGURE_ENV += ac_cv_header_boost_format_hpp=no

# kde 3.5.10 does not even compile without it, upstream maintainer recommends
# this.
CONFIGURE_ARGS += --disable-newdistrlists

SEPARATE_BUILD = flavored
.include <bsd.port.mk>

CONFIGURE_ARGS += --disable-final
