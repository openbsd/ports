# $OpenBSD: Makefile,v 1.8 2002/09/11 12:02:50 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.0
VMEM_WARNING=		Yes
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/${DISTNAME}/src/@}

DISTNAME=	koffice-1.2
PKGNAME=	koffice-1.2

# kill docs for now, they don't compile yet.
#MAKE_FLAGS=TOPSUBDIRS="autocorrect karbon kchart kformula kivio kontour koshell kounavail kpresenter kspread kugar kword pics plugins servicetypes templates tools"
FAKE_FLAGS=${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

LIB_DEPENDS=kdecore.4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell::x11/kde/libs3 python2.2.0.0:python-2.2*:lang/python/2.2

#PATCHORIG=	.bsdorig
MODULES=	qt3
#PATCH_LIST=	p-* patch-*

#KDE=lib/kde3
.include <bsd.port.mk>
