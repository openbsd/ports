# $OpenBSD: Makefile,v 1.37 2003/01/10 08:36:10 jakob Exp $

COMMENT=		"University of Washington IMAP4rev1/POP2/POP3 mail servers"
COMMENT-mailutil=	"University of Washington IMAP4rev1/POP2/POP3 mail utility"

VERSION=		2002.336
DISTNAME=		imap-2002b
PKGNAME=		imap-uw-${VERSION}
PKGNAME-mailutil=	mailutil-uw-${VERSION}
CATEGORIES=		mail

EXTRACT_SUFX=	.tar.Z

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/ \
		ftp://ftp.sunet.se/pub/unix/mail/imap/

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

ALL_TARGET=	bso
MAKE_FLAGS=	EXTRACFLAGS="${CFLAGS}" EXTRAAUTHENTICATORS="gss"

MULTI_PACKAGES=	-mailutil
SUBPACKAGE?=

FLAVORS=	plaintext
FLAVOR?=

.if ${FLAVOR:L:Mplaintext}
MAKE_FLAGS+=	SSLTYPE="unix"
.else
MAKE_FLAGS+=	SSLTYPE="unix.nopwd"
.endif

NO_REGRESS=	Yes

DOCDIR=		share/doc/imap-uw
DOCFILES=	FAQ.txt FAQ.html commndmt.txt drivers.txt formats.txt \
		imaprc.txt md5.txt naming.txt RELNOTES

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/imapd/imapd ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/dmail/dmail ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/mailutil/mailutil ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/tmail/tmail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/imapd/imapd.8c ${PREFIX}/man/man8/imapd.8
	${INSTALL_MAN} ${WRKSRC}/src/ipopd/ipopd.8c ${PREFIX}/man/man8/ipopd.8
	${INSTALL_MAN} ${WRKSRC}/src/dmail/dmail.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/src/mailutil/mailutil.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/src/tmail/tmail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/${DOCDIR}
.endfor

.include <bsd.port.mk>
