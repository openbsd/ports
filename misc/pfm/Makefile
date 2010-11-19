# $OpenBSD: Makefile,v 1.10 2010/11/19 07:23:12 espie Exp $

COMMENT=		personal file manager

DISTNAME=		pfm-1.92.2
CATEGORIES=		misc

HOMEPAGE=		http://p-f-m.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=p-f-m/}

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=		Yes
USE_GROFF =		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Term-ReadLine-Gnu \
			devel/p5-Term-ScreenColor \
			devel/p5-Term-Screen

BUILD_DEPENDS=		${RUN_DEPENDS}

NO_REGRESS=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pfm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>	
