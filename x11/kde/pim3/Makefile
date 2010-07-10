# $OpenBSD: Makefile,v 1.65 2010/07/10 12:44:30 espie Exp $

COMMENT = 		KDE personal information applications
COMMENT-kpilot =	KDE interface to sync with Palm Pilot
CATEGORIES =		x11 x11/kde productivity
VERSION =		3.5.10
DISTNAME =		kdepim-${VERSION}
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
SHARED_LIBS +=	kpimidentities       2.0      # .1.0
SHARED_LIBS +=	kpimexchange         2.0      # .1.0
SHARED_LIBS +=	knodecommon          0.0      # .3.0
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

LIB_DEPENDS +=	::x11/kde/libs3

REVISION =	5
REVISION-kpilot =	0
WANTLIB = GL GLU ICE SM X11 Xau Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi \
	Xinerama Xmu Xpm Xrandr Xrender Xss Xt Xxf86vm art_lgpl_2 artsflow \
	artsflow_idl audiofile c drm expat fam fontconfig freetype glib-2.0 \
	gmodule-2.0 gnokii gpg-error gpgme gthread-2.0 ical idn jpeg \
	kmedia2_idl lcms lib/kde3/DCOP lib/kde3/artskde lib/kde3/kabc \
	lib/kde3/kabc_file lib/kde3/kdecore.>=6 lib/kde3/kdefakes \
	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui \
	lib/kde3/khtml lib/kde3/kimproxy lib/kde3/kio lib/kde3/kjs \
	lib/kde3/knewstuff lib/kde3/kparts lib/kde3/kresources lib/kde3/kspell \
	lib/kde3/kutils lib/kde3/kwalletclient lib/kde3/vcard m mad mal.>=1 \
	mcop mng ogg pcre pcreposix pisock png pthread pthread-stubs qtmcop \
	qui sasl2 sasl2 sndio soundserver_idl stdc++ usb util vorbis vorbisenc \
	vorbisfile xcb z



FLAVORS =	debug
LIB_DEPENDS +=	::comms/pilot-link
RUN_DEPENDS +=	::x11/kde/base3 \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS +=	:gpgme->=0.4.5:security/gpgme \
		::security/cyrus-sasl2 \
		::comms/libmal \
		::comms/gnokii

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	@${post_install_libs}

#MULTI_PACKAGES=-kpilot
FULLPKGNAME-kpilot = kpilot-${VERSION}

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
