# $OpenBSD: Makefile,v 1.17 2001/02/18 15:27:57 jakob Exp $

DISTNAME=	imap-2000c

PKGNAME=	imap-uw-2000c
CATEGORIES=	mail
NEED_VERSION=	1.302

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/ \
		ftp://ftp.cac.washington.edu/imap/old/
EXTRACT_SUFX=	.tar.Z

LIB_DEPENDS=	c-client.2.1::mail/c-client

ALL_TARGET=	bso
MAKE_FLAGS=	SPECIALAUTHENTICATORS=ssl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/imapd/imapd  ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/src/imapd/imapd.8c ${PREFIX}/man/man8/imapd.8
	${INSTALL_MAN} ${WRKSRC}/src/ipopd/ipopd.8c ${PREFIX}/man/man8/ipopd.8

.include <bsd.port.mk>
