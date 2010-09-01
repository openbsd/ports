# $OpenBSD: Makefile,v 1.1.1.1 2010/09/01 10:26:04 kevlo Exp $

COMMENT=	utility for audio-video information extraction

DISTNAME=	avinfo-1.0.a15unix
PKGNAME=	${DISTNAME:S/unix//}

CATEGORIES=	multimedia

HOMEPAGE=	http://shounen.ru/soft/avinfo/desc_en.shtml

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	http://shounen.ru/soft/avinfo/

BUILD_DEPENDS=	::devel/bison

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/unix//}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/avinfo ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/avinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
