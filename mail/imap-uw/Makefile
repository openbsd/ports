# $OpenBSD: Makefile,v 1.19 2001/03/24 19:55:51 jakob Exp $

COMMENT=	University of Washington IMAP4rev1/POP2/POP3 mail servers

DISTNAME=	imap-2000c
PKGNAME=	imap-uw-2000c
CATEGORIES=	mail
NEED_VERSION=	1.363

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

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
