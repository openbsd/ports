# $OpenBSD: Makefile,v 1.7 2000/05/31 07:29:36 jakob Exp $

DISTNAME=	imap-4.7c2
PKGNAME=	imap-uw-4.7c2
CATEGORIES=	mail

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/ \
		ftp://ftp.cac.washington.edu/imap/old/
EXTRACT_SUFX=	.tar.Z

FAKE=		yes
WRKDIST=	${WRKDIR}/imap-4.7c
ALL_TARGET=	bso

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/imapd/imapd  ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/src/imapd/imapd.8c ${PREFIX}/man/man8/imapd.8
	${INSTALL_MAN} ${WRKSRC}/src/ipopd/ipopd.8c ${PREFIX}/man/man8/ipopd.8

.include <bsd.port.mk>
