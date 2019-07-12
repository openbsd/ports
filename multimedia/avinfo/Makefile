# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:55 sthen Exp $

COMMENT=	utility for audio-video information extraction

DISTNAME=	avinfo-1.0.a15unix
PKGNAME=	${DISTNAME:S/unix//}
REVISION =	1

CATEGORIES=	multimedia

HOMEPAGE=	http://shounen.ru/soft/avinfo/desc_en.shtml

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MASTER_SITES=	http://shounen.ru/soft/avinfo/

BUILD_DEPENDS=	devel/bison

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -Wall"

WRKDIST=	${WRKDIR}/${DISTNAME:S/unix//}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/avinfo ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/avinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
