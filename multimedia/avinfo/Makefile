# $OpenBSD: Makefile,v 1.7 2015/11/15 11:55:59 jca Exp $

COMMENT=	utility for audio-video information extraction

DISTNAME=	avinfo-1.0.a15unix
PKGNAME=	${DISTNAME:S/unix//}
REVISION =	1

CATEGORIES=	multimedia

HOMEPAGE=	http://shounen.ru/soft/avinfo/desc_en.shtml

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	http://shounen.ru/soft/avinfo/

BUILD_DEPENDS=	devel/bison

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/unix//}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/avinfo ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/avinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
