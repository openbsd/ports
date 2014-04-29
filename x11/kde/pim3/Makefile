# $OpenBSD: Makefile,v 1.86 2014/04/29 22:06:50 zhuk Exp $

COMMENT = 		KDE personal information applications
CATEGORIES =		x11 x11/kde productivity
VERSION =		3.5.10
DISTNAME =		kdepim-${VERSION}
PKGSPEC =		kdepim->=3,<4
REVISION =		19

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

WANTLIB =  c crypto expat m pthread pthread-stubs sndio stdc++ util z
WANTLIB += GL GLU ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xpm Xrandr Xrender Xss Xt Xxf86vm drm
WANTLIB += fontconfig freetype glapi xcb xcb-dri2 xcb-glx
WANTLIB += ${KDE}/DCOP ${KDE}/artsflow ${KDE}/artsflow_idl
WANTLIB += ${KDE}/artskde ${KDE}/kabc ${KDE}/kabc_file ${KDE}/kdecore
WANTLIB += ${KDE}/kdefakes ${KDE}/kdefx ${KDE}/kdeprint ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/khtml ${KDE}/kimproxy ${KDE}/kio
WANTLIB += ${KDE}/kjs ${KDE}/kmedia2_idl ${KDE}/knewstuff
WANTLIB += ${KDE}/kparts ${KDE}/kresources ${KDE}/kspell ${KDE}/kutils
WANTLIB += ${KDE}/kwalletclient ${KDE}/mcop ${KDE}/qtmcop
WANTLIB += ${KDE}/soundserver_idl ${KDE}/vcard
WANTLIB += FLAC art_lgpl_2 assuan audiofile fam glib-2.0 gmodule-2.0 gnokii
WANTLIB += gpg-error gpgme gthread-2.0 ical idn jpeg lcms mad mng ogg
WANTLIB += pcre pcreposix pisock png qui sasl2 usb usb-1.0 vorbis
WANTLIB += vorbisenc vorbisfile

LIB_DEPENDS =	x11/kde/libs3 \
		security/gpgme>=0.4.5 \
		security/cyrus-sasl2 \
		comms/pilot-link \
		comms/gnokii

RUN_DEPENDS =	x11/kde/base3 \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

# make sure we do not grab boost on the way
CONFIGURE_ENV += ac_cv_header_boost_format_hpp=no

# kde 3.5.10 does not even compile without it, upstream maintainer recommends
# this.
CONFIGURE_ARGS += --disable-newdistrlists

SEPARATE_BUILD = flavored

CONFIGURE_ARGS += --disable-final

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>
