# $OpenBSD: Makefile,v 1.25 2002/06/24 08:31:33 jakob Exp $

COMMENT=	University of Washington IMAP4rev1/POP2/POP3 mail servers

VERSION=	2001.315
DISTNAME=	pine4.44
PKGNAME=	imap-uw-${VERSION}
PKGNAME-ipop=	ipop-uw-${VERSION}
CATEGORIES=	mail
NEED_VERSION=	1.491

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

WRKDIST=	${WRKDIR}/${DISTNAME}/imap
ALL_TARGET=	bso
MAKE_FLAGS=	EXTRACFLAGS="${CFLAGS}" EXTRAAUTHENTICATORS="gss"

FLAVORS=	noplain
FLAVOR?=

.if ${FLAVOR:L:Mnoplain}
MAKE_FLAGS+=	SSLTYPE="nopwd"
.else
MAKE_FLAGS+=	SSLTYPE="unix"
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/imapd/imapd ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/src/imapd/imapd.8c ${PREFIX}/man/man8/imapd.8
	${INSTALL_MAN} ${WRKSRC}/src/ipopd/ipopd.8c ${PREFIX}/man/man8/ipopd.8

.include <bsd.port.mk>
