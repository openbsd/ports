# $OpenBSD: Makefile,v 1.72 2006/10/28 11:52:13 espie Exp $

COMMENT=		"K Desktop Environment, libraries"
COMMENT-cups=		"K Desktop Environment, cups support"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.5
DISTNAME=		kdelibs-${VERSION}
MASTER_SITES0=  ftp://ftp.kde.org/pub/kde/security_patches/
#PATCHFILES=	post-3.4.3-kdelibs-kjs.diff:0

PKGNAME=		${DISTNAME}
PKGNAME-cups=		kdecups-${VERSION}
MODKDE_VERSION?=	3.5.3
SHARED_LIBS +=	DCOP                 7.0      # .6.0
SHARED_LIBS +=	kdefx                7.0      # .6.0
SHARED_LIBS +=	kdefakes             7.0      # .6.0
SHARED_LIBS +=	kdecore              7.0      # .6.0
SHARED_LIBS +=	kunittest            2.0      # .1.0
SHARED_LIBS +=	kdeui                7.0      # .6.0
SHARED_LIBS +=	kspell               7.0      # .6.0
SHARED_LIBS +=	kdesu                7.0      # .6.0
SHARED_LIBS +=	kjs                  4.0      # .3.0
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

FLAVORS=debug
VMEM_WARNING=	Yes


MULTI_PACKAGES=	-cups
CONFIGURE_ARGS+= --enable-cups

SUBPACKAGE?=

BUILD_DEPENDS+= ::devel/pkgconfig
LIB_DEPENDS+=	art_lgpl_2::graphics/libart
LIB_DEPENDS+=	idn::devel/libidn
WANTLIB+=	intl iconv util jpeg m X11 ICE Xrender c SM pthread \
		stdc++ Xext z png

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == ""

LIB_DEPENDS+=	artsflow.>=1.0,artsflow_idl,qtmcop,soundserver_idl,mcop,kmedia2_idl::x11/kde/arts3 \
		pcreposix,pcre::devel/pcre \
		xslt.>=1.10:libxslt->=1.0.10:textproc/libxslt \
		bz2::archivers/bzip2 \
		tiff.>=35::graphics/tiff \
		jasper::graphics/jasper

WANTLIB+=	audiofile esd glib-2.0 \
		gmodule-2.0 gthread-2.0 mad ogg \
		ossaudio vorbisenc vorbis vorbisfile \
		xml2 krb5 gssapi crypto asn1


LIB_DEPENDS+=	Half,Iex,Imath,IlmImf::graphics/openexr	\
		aspell::textproc/aspell/core
RUN_DEPENDS+=	::x11/hicolor-icon-theme
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == "-cups"
LIB_DEPENDS+=	cups::print/cups
WANTLIB+=	gcrypt gnutls gpg-error
.endif

.if defined(PACKAGING) && ${SUBPACKAGE:L} == "-cups"
LIB_DEPENDS+=	kdecore.>=6,kwalletclient,kdefakes,kdefx,kdeprint,kio,kparts,kdeui,kdesu,kdeprint_management,DCOP::x11/kde/libs3
.endif

SEPARATE_BUILD=	flavored
SAMPLECONFDIR=${TRUEPREFIX}/share/apps/kde-conf-sample
EXTRA_CONFIG=xdg/menus/applications.menu

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
	
post-extract:
	cp ${FILESDIR}/krb5-config ${WRKDIR}/bin
	chmod a+x ${WRKDIR}/bin/krb5-config

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/libtool ${PREFIX}/bin/kdelibtool

USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static
.include <bsd.port.mk>
MODGNU_AUTOCONF_FILES+= dcop/dcop-path.h.in
