# $OpenBSD: Makefile,v 1.2 2000/02/18 20:36:03 jakob Exp $

DISTNAME=	imap-4.7a
PKGNAME=	imap-uw-4.7a
CATEGORIES=	mail

MAINTAINER=     jakob@openbsd.org

LICENSE_TYPE=		NOFEE
PERMIT_PACKAGE_CDROM=	NO
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	NO
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/ \
		ftp://ftp.cac.washington.edu/imap/old/ \
		ftp://ftp.sunet.se/pub/unix/mail/imap/ \
		ftp://ftp.sunet.se/pub/unix/mail/imap/old/
EXTRACT_SUFX=	.tar.Z

ALL_TARGET=	bso

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/imapd/imapd  ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/src/imapd/imapd.8c ${PREFIX}/man/man8/imapd.8
	${INSTALL_MAN} ${WRKSRC}/src/ipopd/ipopd.8c ${PREFIX}/man/man8/ipopd.8

.include <bsd.port.mk>
