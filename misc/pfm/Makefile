# $OpenBSD: Makefile,v 1.13 2019/07/12 21:02:23 sthen Exp $

COMMENT=		personal file manager

DISTNAME=		pfm-1.92.2
REVISION=		0
CATEGORIES=		misc

HOMEPAGE=		http://p-f-m.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=p-f-m/}

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Term-ReadLine-Gnu \
			devel/p5-Term-ScreenColor \
			devel/p5-Term-Screen

BUILD_DEPENDS=		${RUN_DEPENDS}

NO_TEST=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pfm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>	
