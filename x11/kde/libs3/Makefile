# $OpenBSD: Makefile,v 1.36 2004/03/07 21:08:44 espie Exp $

COMMENT=		"X11 toolkit, libraries"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdelibs-${VERSION}
MODKDE_VERSION?=	3.2

FLAVORS=debug
VMEM_WARNING=	Yes
LIB_DEPENDS=	art_lgpl_2::graphics/libart \
		artsflow.1.0,artsflow_idl,qtmcop,soundserver_idl,mcop,kmedia2_idl::x11/kde/arts3 \
		pcreposix,pcre::devel/pcre \
		xslt.1.10:libxslt->=1.0.10:textproc/libxslt \
		bz2::archivers/bzip2 \
		tiff.35::graphics/tiff

CONFIGURE_ARGS+= --disable-cups

SEPARATE_BUILD=	flavored
SAMPLECONFDIR=${TRUEPREFIX}/share/apps/kde-conf-sample
EXTRA_CONFIG=xdg/menus/applications.menu
SUBST_VARS=EXTRA_CONFIG SAMPLECONFDIR

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
	
.include <bsd.port.mk>
MODGNU_AUTOCONF_FILES+= dcop/dcop-path.h.in
