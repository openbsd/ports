# $OpenBSD: Makefile,v 1.43 2004/12/16 07:25:25 alek Exp $

COMMENT=		"K Desktop Environment, libraries"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdelibs-${VERSION}
MODKDE_VERSION?=	3.3.0

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
		xml2 z
CONFIGURE_ARGS+= --disable-cups

SEPARATE_BUILD=	flavored
SAMPLECONFDIR=${TRUEPREFIX}/share/apps/kde-conf-sample
EXTRA_CONFIG=xdg/menus/applications.menu

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
	
.include <bsd.port.mk>
MODGNU_AUTOCONF_FILES+= dcop/dcop-path.h.in
