# $OpenBSD: Makefile,v 1.13 2003/01/28 12:37:16 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.0
VMEM_WARNING=		Yes
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/${DISTNAME}/src/@}

DISTNAME=	koffice-1.2.1
PKGNAME=	koffice-1.2.1p0

FAKE_FLAGS=${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

LIB_DEPENDS=	kdecore.4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell::x11/kde/libs3 \
		python2.2.0.0:python-2.2*:lang/python/2.2 \
		art_lgpl_2.5::graphics/libart

post-extract:
	ln -s /usr/bin/true ${WRKDIR}/bin/automake-1.6

#PATCHORIG=	.bsdorig
#PATCH_LIST=	p-* patch-*

SEPARATE_BUILD=flavored
#KDE=lib/kde3
.include <bsd.port.mk>
