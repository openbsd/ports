# $OpenBSD: Makefile,v 1.20 2002/04/10 01:24:39 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
NEED_VERSION=		1.483
VERSION=		1.1.1
MASTER_SITE_SUBDIR=	stable/koffice-${VERSION}/src/
DISTNAME=		koffice-${VERSION}

BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS= kdecore.3,DCOP,kdeprint,kdesu,kdeui,kfile,kio,kparts,kspell,kssl,ksycoca::x11/kde/libs2 python2.2.0.0:python-2.2*:lang/python/2.2

MODULES=	qt2
PATCH_LIST=	p-* patch-*

.include <bsd.port.mk>
