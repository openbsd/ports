# $OpenBSD: Makefile,v 1.26 2002/07/07 15:22:24 jakob Exp $

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

DOCDIR=		share/doc/imap-uw
DOCFILES=	FAQ commndmt.txt drivers.txt formats.txt imaprc.txt \
		md5.txt naming.txt

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/imapd/imapd ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/src/imapd/imapd.8c ${PREFIX}/man/man8/imapd.8
	${INSTALL_MAN} ${WRKSRC}/src/ipopd/ipopd.8c ${PREFIX}/man/man8/ipopd.8
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/${DOCDIR}
.endfor

.include <bsd.port.mk>
