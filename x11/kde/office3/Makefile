# $OpenBSD: Makefile,v 1.19 2004/10/08 05:20:41 sturm Exp $

COMMENT=		"office suite for KDE"

CATEGORIES=		x11 x11/kde productivity
VERSION=		3.1.4
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/${DISTNAME}/src/@}

DISTNAME=	koffice-1.3.3

FAKE_FLAGS=	${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

SEPARATE_BUILD=	flavored

MODKDE_VERSION=
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
AUTOCONF_VERSION=2.58

LIB_DEPENDS=	kdecore.4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell,kabc,kjs,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		python2.3.0.0::lang/python/2.3 \
		art_lgpl_2.5::graphics/libart \
		wv2::converters/wv2 \
		aspell::textproc/aspell/core \
		Magick::graphics/ImageMagick \
		jbig::graphics/jbigkit

.include <bsd.port.mk>
