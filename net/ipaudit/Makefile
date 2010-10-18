# $OpenBSD: Makefile,v 1.7 2010/10/18 18:36:48 espie Exp $

COMMENT=		IP traffic summarizer

DISTNAME=		ipaudit-0.95
REVISION=		1
CATEGORIES=		net sysutils

HOMEPAGE=		http://ipaudit.sourceforge.net/

MASTER_SITES=		${HOMEPAGE}/download/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap

EXTRACT_SUFX=		.tgz

USE_GROFF =	Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ipaudit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipaudit
	cd ${WRKSRC}/src && ${INSTALL_PROGRAM} ipaudit ipstrings \
	  total ${PREFIX}/bin
	cd ${WRKSRC}/man/man1 && ${INSTALL_MAN} * \
 	  ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/ipaudit
	cd ${WRKSRC}/src && ${INSTALL_DATA} ipaudit.conf.sample \
	  ${PREFIX}/share/examples/ipaudit

.include <bsd.port.mk>
