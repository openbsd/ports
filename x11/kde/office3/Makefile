# $OpenBSD: Makefile,v 1.3 2002/04/15 06:54:44 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
NEED_VERSION=		1.483
VERSION=		1.1.1
DISTNAME=		koffice-${VERSION}

FULLPKGNAME=	koffice-${VERSION}-kde3
MASTER_SITE_SUBDIR=	stable/3.0/src/
DISTFILES=	koffice-${VERSION}-kde3.tar.bz2

#BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS= kdecore.3,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3 python2.2.0.0:python-2.2*:lang/python/2.2

PATCHORIG=	.bsdorig
MODULES=	qt3
PATCH_LIST=	p-* patch-*

KDE=lib/kde3
.include <bsd.port.mk>
