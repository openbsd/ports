# $OpenBSD: Makefile,v 1.58 2005/10/17 11:28:25 espie Exp $

COMMENT=		"K Desktop Environment, libraries"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
DISTNAME=		kdelibs-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION?=	3.4

FLAVORS=debug
VMEM_WARNING=	Yes
LIB_DEPENDS=	art_lgpl_2::graphics/libart \
		artsflow.1.0,artsflow_idl,qtmcop,soundserver_idl,mcop,kmedia2_idl::x11/kde/arts3 \
		pcreposix,pcre::devel/pcre \
		xslt.1.10:libxslt->=1.0.10:textproc/libxslt \
		bz2::archivers/bzip2 \
		tiff.35::graphics/tiff \
		jasper::graphics/jasper

WANTLIB=	c ICE SM X11 Xext Xrender audiofile esd glib-2.0.0.0 \
		gmodule-2.0.0.0 gthread-2.0.0.0 iconv intl jpeg m mad ogg \
		ossaudio png pthread stdc++ util vorbis vorbisenc vorbisfile \
		xml2 z krb5 gssapi ssl crypto asn1

CONFIGURE_ARGS+= --enable-cups

BUILD_DEPENDS+=	::print/cups # crypto,ssl,cups
BUILD_DEPENDS+= ::textproc/docbook-to-man \
		::devel/pkgconfig
LIB_DEPENDS+=	Half,Iex,Imath,IlmImf::graphics/openexr	\
		aspell::textproc/aspell/core

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
