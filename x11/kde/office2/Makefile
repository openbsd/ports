# $OpenBSD: Makefile,v 1.22 2002/07/16 12:20:43 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
VERSION=		1.1.1
MASTER_SITES=		${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}
DISTNAME=		koffice-${VERSION}

BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS= kdecore.3,DCOP,kdeprint,kdesu,kdeui,kfile,kio,kparts,kspell,kssl,ksycoca::x11/kde/libs2 python2.2.0.0:python-2.2*:lang/python/2.2

MODULES=	qt2
PATCH_LIST=	p-* patch-*

.include <bsd.port.mk>
