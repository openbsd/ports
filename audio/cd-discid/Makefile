# $OpenBSD: Makefile,v 1.1.1.1 2012/11/21 20:37:34 sthen Exp $

COMMENT=	retrieve CDDB ID from a disc

DISTNAME=	cd-discid-upstream-1.3.1
PKGNAME=	${DISTNAME:S/-upstream//}

CATEGORIES=	audio

HOMEPAGE=	https://github.com/taem/cd-discid

# XXX
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	http://spacehopper.org/mirrors/

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cd-discid ${PREFIX}/bin/cd-discid
	${INSTALL_DATA} ${WRKSRC}/cd-discid.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
