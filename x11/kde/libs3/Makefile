# $OpenBSD: Makefile,v 1.31 2004/02/01 14:59:23 espie Exp $

COMMENT=		"X11 toolkit, libraries"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		kdelibs-${VERSION}
MODKDE_VERSION?=	3.2

FLAVORS=debug
LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		audiofile::devel/libaudiofile \
		pcreposix,pcre::devel/pcre \
		xml2.6:libxml->=2.4.8:textproc/libxml \
		xslt.1.10:libxslt->=1.0.10:textproc/libxslt \
		bz2::archivers/bzip2 \
		art_lgpl_2::graphics/libart \
		lber,ldap.2:openldap-client-2.*:databases/openldap \
		artsflow.1.0,artsflow_idl.1.0,kmedia2_idl.1.0,mcop.1.0,qtmcop.1.0,soundserver_idl.1.0::x11/kde/arts3

SEPARATE_BUILD=	flavored
# To investigate
#CONFIGURE_ARGS=--enable-fast-malloc=full
SAMPLECONFDIR=${TRUEPREFIX}/share/apps/kde-conf-sample
EXTRA_CONFIG=xdg/menus/applications.menu
SUBST_VARS=EXTRA_CONFIG SAMPLECONFDIR

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${SAMPLECONFDIR}
	
.include <bsd.port.mk>
