# $OpenBSD: Makefile,v 1.7 2000/10/04 21:50:12 jakob Exp $

DISTNAME=	rxp-1.2
CATEGORIES=	textproc

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cogsci.ed.ac.uk/pub/richard/

FAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>
