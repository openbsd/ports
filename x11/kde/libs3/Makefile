# $OpenBSD: Makefile,v 1.120 2012/08/04 14:51:38 ajacoutot Exp $

COMMENT-main =		K Desktop Environment, libraries
COMMENT-cups =		K Desktop Environment, cups support
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdelibs-${VERSION}
MASTER_SITES0 =  	ftp://ftp.kde.org/pub/kde/security_patches/

PKGNAME-main =		${DISTNAME}
PKGNAME-cups =		kdecups-${VERSION}
MODKDE_VERSION =		3.5.8
SHARED_LIBS +=	DCOP                 7.0      # .6.0
SHARED_LIBS +=	kdefx                7.0      # .6.0
SHARED_LIBS +=	kdefakes             7.0      # .6.0
SHARED_LIBS +=	kdecore              7.0      # .6.0
SHARED_LIBS +=	kunittest            2.0      # .1.0
SHARED_LIBS +=	kdeui                8.0      # .6.0
SHARED_LIBS +=	kspell               7.0      # .6.0
SHARED_LIBS +=	kdesu                7.0      # .6.0
SHARED_LIBS +=	kjs                  5.0      # .3.0
SHARED_LIBS +=	kwalletclient        2.0      # .1.1
SHARED_LIBS +=	kwalletbackend       2.0      # .1.0
SHARED_LIBS +=	kio                  7.0      # .6.0
SHARED_LIBS +=	kdesasl              4.0      # .3.0
SHARED_LIBS +=	kntlm                1.0      # .0.0
SHARED_LIBS +=	artskde              4.0      # .3.0
SHARED_LIBS +=	kdnssd               2.0      # .1.0
SHARED_LIBS +=	knewstuff            2.0      # .1.0
SHARED_LIBS +=	kparts               4.0      # .3.0
SHARED_LIBS +=	kresources           4.0      # .3.0
SHARED_LIBS +=	kutils               4.0      # .3.0
SHARED_LIBS +=	kmid                 1.0      # .0.95
SHARED_LIBS +=	kscreensaver         7.0      # .6.0
SHARED_LIBS +=	kdeprint             7.0      # .6.0
SHARED_LIBS +=	kdeprint_management  7.0      # .6.0
SHARED_LIBS +=	vcard                1.0      # .0.0
SHARED_LIBS +=	kabc                 4.0      # .3.0
SHARED_LIBS +=	kabc_file            2.0      # .1.0
SHARED_LIBS +=	kabc_dir             2.0      # .1.0
SHARED_LIBS +=	kabc_ldapkio         2.0      # .1.0
SHARED_LIBS +=	kspell2              2.0      # .1.0
SHARED_LIBS +=	kmdi2                2.0      # .1.0
SHARED_LIBS +=	kmdi                 2.0      # .1.0
SHARED_LIBS +=	kjava                2.0      # .1.0
SHARED_LIBS +=	khtml                7.0      # .6.0
SHARED_LIBS +=	ktexteditor          1.0      # .0.0
SHARED_LIBS +=	kscript              1.0      # .0.0
SHARED_LIBS +=	kmediaplayer         1.0      # .0.0
SHARED_LIBS +=	kimproxy             1.0      # .0.0
SHARED_LIBS +=	katepartinterfaces   1.0      # .0.0

FLAVORS =	debug
VMEM_WARNING =	Yes


MULTI_PACKAGES =	-main # -cups
# broken with cups>=1.6.0
CONFIGURE_ARGS += 	--disable-cups

MODULES =	x11/kde devel/gettext

LIB_DEPENDS =	graphics/libart \
		devel/libidn \
		sysutils/gamin 

WANTLIB =	asn1 crypto gssapi util jpeg krb5 m X11 \
		ICE Xrender c SM pthread stdc++ Xext z png \
		Xau Xdmcp pthread-stubs xcb art_lgpl_2 idn \
		fam>=1

LIB_DEPENDS-main =	\
	${LIB_DEPENDS} \
	x11/kde/arts3 \
	devel/pcre \
	textproc/libxslt>=1.0.10 \
	archivers/bzip2 \
	graphics/tiff \
	graphics/jasper \
	graphics/openexr \
	textproc/aspell/core

WANTLIB-main = ${WANTLIB}

RUN_DEPENDS-main = \
	${RUN_DEPENDS} \
	x11/gtk+2,-guic \
	devel/desktop-file-utils

LIB_DEPENDS-cups = \
	${LIB_DEPENDS} \
	x11/kde/libs3 \
	print/cups,-libs

WANTLIB-cups = ${WANTLIB}

REVISION-main = 18
REVISION-cups = 10
WANTLIB-main += Half Iex IlmImf>=4 IlmThread Imath artsflow>=1 \
	artsflow_idl aspell audiofile bz2 glib-2.0 gmodule-2.0 gthread-2.0 \
	jasper kmedia2_idl mad mcop ogg pcre pcreposix qtmcop sndio \
	soundserver_idl tiff>=35 vorbis vorbisenc vorbisfile xml2 xslt>=1.10
WANTLIB-cups += DCOP cups lib/kde3/kdecore>=6 lib/kde3/kdefakes \
	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdeprint_management \
	lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio lib/kde3/kparts \
	lib/kde3/kwalletclient ssl


SEPARATE_BUILD =	flavored
SAMPLECONFDIR =		${TRUEPREFIX}/share/apps/kde-conf-sample
EXTRA_CONFIG =		xdg/menus/applications.menu

FAKE_FLAGS =		sysconfdir=${SAMPLECONFDIR}

post-extract:
	cp ${FILESDIR}/krb5-config ${WRKDIR}/bin
	chmod a+x ${WRKDIR}/bin/krb5-config

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/kdeprint/cups/kmcupsmanager.cpp

.include <bsd.port.mk>

MODGNU_AUTOCONF_FILES +=	dcop/dcop-path.h.in
