# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:32 sthen Exp $

COMMENT=	retrieve CDDB ID from a disc

DISTNAME=	cd-discid-upstream-1.3.1
PKGNAME=	${DISTNAME:S/-upstream//}

CATEGORIES=	audio

HOMEPAGE=	https://github.com/taem/cd-discid

# XXX
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	https://spacehopper.org/mirrors/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cd-discid ${PREFIX}/bin/cd-discid
	${INSTALL_DATA} ${WRKSRC}/cd-discid.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
