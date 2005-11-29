# $OpenBSD: Makefile,v 1.59 2005/11/29 14:00:12 espie Exp $

COMMENT=		"K Desktop Environment, libraries"
COMMENT-cups=		"K Desktop Environment, cups support"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		kdelibs-${VERSION}
PKGNAME=		${DISTNAME}
PKGNAME-cups=		kdecups-${VERSION}
MODKDE_VERSION?=	3.5

FLAVORS=debug
VMEM_WARNING=	Yes


MULTI_PACKAGES=	-cups
CONFIGURE_ARGS+= --enable-cups

SUBPACKAGE?=

BUILD_DEPENDS+= ::textproc/docbook-to-man \
		::devel/pkgconfig
LIB_DEPENDS+=	art_lgpl_2::graphics/libart
WANTLIB+=	intl iconv util jpeg m X11 ICE Xrender c SM pthread \
		stdc++ Xext z png

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == ""

LIB_DEPENDS+=	artsflow.1.0,artsflow_idl,qtmcop,soundserver_idl,mcop,kmedia2_idl::x11/kde/arts3 \
		pcreposix,pcre::devel/pcre \
		xslt.1.10:libxslt->=1.0.10:textproc/libxslt \
		bz2::archivers/bzip2 \
		tiff.35::graphics/tiff \
		jasper::graphics/jasper

WANTLIB+=	audiofile esd glib-2.0.0.0 \
		gmodule-2.0.0.0 gthread-2.0.0.0 mad ogg \
		ossaudio vorbisenc vorbis vorbisfile \
		xml2 krb5 gssapi crypto asn1


LIB_DEPENDS+=	Half,Iex,Imath,IlmImf::graphics/openexr	\
		aspell::textproc/aspell/core
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == "-cups"
LIB_DEPENDS+=	cups::print/cups
WANTLIB+=	gcrypt gnutls gpg-error
.endif

.if defined(PACKAGING) && ${SUBPACKAGE:L} == "-cups"
LIB_DEPENDS+=	kdecore.6,kwalletclient,kdefakes,kdefx,kdeprint,kio,kparts,kdeui,kdesu,kdeprint_management,DCOP::x11/kde/libs3
.endif

SEPARATE_BUILD=	flavored
SAMPLECONFDIR=${TRUEPREFIX}/share/apps/kde-conf-sample
EXTRA_CONFIG=xdg/menus/applications.menu

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
	
# Stuff provided that debian, trimmed down of non-existent stuff.

EXTRA_MANPAGES= artsmessage cupsdconf dcop \
    dcopfind dcopserver \
    dcopserver_shutdown imagetops kaddprinterwizard \
    kbuildsycoca kconf_update kcookiejar kde-config kded kdeinit \
    kdeinit_shutdown kdeinit_wrapper kdontchangethehostname \
    kfile kinstalltheme kio_http_cache_cleaner \
    kio_uiserver kmailservice \
    ksendbugmail ksvgtopng ktelnetservice \
    meinproc 

post-extract:
	cp ${FILESDIR}/krb5-config ${WRKDIR}/bin
	chmod a+x ${WRKDIR}/bin/krb5-config

post-build:
	@mkdir -p ${WRKBUILD}/man/man1
	@for i in ${EXTRA_MANPAGES}; do \
	    ${LOCALBASE}/bin/docbook-to-man ${WRKDIST}/debian/man/$$i.sgml >${WRKBUILD}/man/man1/$$i.1; \
	done

post-install:
	@for i in ${EXTRA_MANPAGES}; do \
		${INSTALL_MAN} ${WRKBUILD}/man/man1/$$i.1 ${PREFIX}/man/man1; \
	done
	${INSTALL_PROGRAM} ${WRKBUILD}/libtool ${PREFIX}/bin/kdelibtool

.include <bsd.port.mk>
MODGNU_AUTOCONF_FILES+= dcop/dcop-path.h.in
