# $OpenBSD: Makefile,v 1.2 2013/03/10 22:55:01 espie Exp $

COMMENT=	retrieve CDDB ID from a disc

DISTNAME=	cd-discid-upstream-1.3.1
PKGNAME=	${DISTNAME:S/-upstream//}

CATEGORIES=	audio

HOMEPAGE=	https://github.com/taem/cd-discid

# XXX
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://spacehopper.org/mirrors/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cd-discid ${PREFIX}/bin/cd-discid
	${INSTALL_DATA} ${WRKSRC}/cd-discid.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
