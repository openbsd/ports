# $OpenBSD: Makefile,v 1.4 2004/08/04 19:20:43 xsa Exp $

COMMENT=	"powerful IMAP/Maildir synchronization and reader support"

DISTNAME=	offlineimap_4.0.6
CATEGORIES=	mail
PKGNAME=        ${DISTNAME:S/_/-/}

HOMEPAGE=	http://gopher.quux.org:70/devel/offlineimap/

MAINTAINER=	Laurence Tratt <laurie@tratt.net>

# GPL licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

MODULES=	lang/python

WRKDIST=	${WRKDIR}/offlineimap

DOCDIR=		${PREFIX}/share/doc/offlineimap
EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/manual.txt ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
