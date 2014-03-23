# $OpenBSD: Makefile,v 1.84 2014/03/23 09:21:30 espie Exp $

COMMENT = 		KDE personal information applications
CATEGORIES =		x11 x11/kde productivity
VERSION =		3.5.10
DISTNAME =		kdepim-${VERSION}
PKGSPEC =		kdepim->=3,<4
REVISION =		18

MODKDE_VERSION =	3.5.8
# XXX switch back to gnu libtool until the name.la vs libname.la
# ambiguity is fixed
USE_LIBTOOL =	gnu

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

WANTLIB += DCOP GL GLU ICE SM X11 Xcursor Xdamage Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xpm Xrandr Xrender Xss Xt Xxf86vm
WANTLIB += art_lgpl_2 artsflow artsflow_idl artskde assuan audiofile
WANTLIB += c drm expat fontconfig freetype glib-2.0 gmodule-2.0
WANTLIB += gnokii gpg-error gpgme gthread-2.0 ical idn jpeg kabc
WANTLIB += kabc_file kdecore kdefakes kdefx kdeprint kdesu kdeui
WANTLIB += khtml kimproxy kio kjs kmedia2_idl knewstuff kparts
WANTLIB += kresources kspell kutils kwalletclient lcms m mad
WANTLIB += mcop mng ogg pcre pcreposix pisock png pthread qtmcop
WANTLIB += qui sasl2 sndio soundserver_idl stdc++ usb usb-1.0
WANTLIB += util vcard vorbis vorbisenc vorbisfile xcb z

LIB_DEPENDS =	x11/kde/libs3 \
		security/gpgme>=0.4.5 \
		security/cyrus-sasl2 \
		comms/pilot-link \
		comms/gnokii

RUN_DEPENDS =	x11/kde/base3 \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

CONFIGURE_ENV += CPPFLAGS="-pthread" \
		LDFLAGS="-pthread"

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
