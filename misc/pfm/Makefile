# $OpenBSD: Makefile,v 1.5 2004/02/02 17:45:22 sturm Exp $

COMMENT=		"personal file manager"

DISTNAME=		pfm-1.92.2
CATEGORIES=		misc

HOMEPAGE=		http://p-f-m.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=p-f-m/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=		Yes
PKG_ARCH=		*

BUILD_DEPENDS=		:p5-Term-ReadLine-Gnu-*:devel/p5-Term-ReadLine-Gnu \
			:p5-Term-ScreenColor-*:devel/p5-Term-ScreenColor \
			:p5-Term-Screen-*:devel/p5-Term-Screen

RUN_DEPENDS=		${BUILD_DEPENDS}

NO_REGRESS=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pfm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>	
