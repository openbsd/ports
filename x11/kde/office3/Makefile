# $OpenBSD: Makefile,v 1.7 2002/09/01 08:25:26 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
VERSION=		1.1.1
DISTNAME=		koffice-${VERSION}
VMEM_WARNING=		Yes

FULLPKGNAME=	koffice-${VERSION}-kde3
MASTER_SITES=	${MASTER_SITE_KDE:=koffice-1.1.1-kde3/src/}
DISTFILES=	koffice-${VERSION}-kde3.tar.bz2

#BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS= kdecore.3,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3 python2.2.0.0:python-2.2*:lang/python/2.2

PATCHORIG=	.bsdorig
MODULES=	qt3
PATCH_LIST=	p-* patch-*

KDE=lib/kde3
.include <bsd.port.mk>
