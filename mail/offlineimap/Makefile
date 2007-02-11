# $OpenBSD: Makefile,v 1.8 2007/02/11 11:25:51 fkr Exp $

COMMENT=	"powerful IMAP/Maildir synchronization and reader support"

V=             4.0.16                                                                                                
DISTNAME=      offlineimap_${V} 
CATEGORIES=	mail
PKGNAME=        ${DISTNAME:S/_/-/}

HOMEPAGE=	http://software.complete.org/offlineimap/

MAINTAINER=	Laurence Tratt <laurie@tratt.net>

# GPL licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}static/download_area/${V}/

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
