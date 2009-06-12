# $OpenBSD: Makefile,v 1.97 2009/06/12 20:01:09 kili Exp $

COMMENT-main =		K Desktop Environment, libraries
COMMENT-cups =		K Desktop Environment, cups support
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdelibs-${VERSION}
MASTER_SITES0 =  	ftp://ftp.kde.org/pub/kde/security_patches/

PKGNAME-main =		${DISTNAME}p0
PKGNAME-cups =		kdecups-${VERSION}p0
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
SHARED_LIBS +=	kabc_net             2.0      # .1.0
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


MULTI_PACKAGES =	-main -cups
CONFIGURE_ARGS += 	--enable-cups

LIB_DEPENDS =	art_lgpl_2::graphics/libart \
		idn::devel/libidn \
		fam::sysutils/fam
WANTLIB =	asn1 crypto gssapi iconv intl util jpeg krb5 m X11 \
		ICE Xrender c SM pthread stdc++ Xext z png rpcsvc \
		Xau Xdmcp

LIB_DEPENDS-main =	\
	${LIB_DEPENDS} \
	artsflow.>=1.0,artsflow_idl,qtmcop,soundserver_idl,mcop,kmedia2_idl::x11/kde/arts3 \
	pcreposix,pcre::devel/pcre \
	xslt.>=1.10:libxslt->=1.0.10:textproc/libxslt \
	bz2::archivers/bzip2 \
	tiff.>=35::graphics/tiff \
	jasper::graphics/jasper \
	IlmImf.>=4::graphics/openexr \
	aspell::textproc/aspell/core

WANTLIB-main =	${WANTLIB} \
		Half Iex IlmThread Imath \
		audiofile glib-2.0 \
		gmodule-2.0 gthread-2.0 mad ogg \
		sndio vorbisenc vorbis vorbisfile \
		xml2


RUN_DEPENDS-main = \
	${RUN_DEPENDS} \
	::x11/hicolor-icon-theme \
	:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS-cups = \
	${LIB_DEPENDS} \
	kdecore.>=6,kwalletclient,kdefakes,kdefx,kdeprint,kio,kparts,kdeui,kdesu,kdeprint_management,DCOP::x11/kde/libs3 \
	cups::print/cups

WANTLIB-cups =	${WANTLIB} \
		gcrypt gnutls gpg-error tasn1


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

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/libtool ${PREFIX}/bin/kdelibtool

.include <bsd.port.mk>
MODGNU_AUTOCONF_FILES +=	dcop/dcop-path.h.in
