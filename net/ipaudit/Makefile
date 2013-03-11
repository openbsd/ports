# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:47 espie Exp $

COMMENT=		IP traffic summarizer

DISTNAME=		ipaudit-0.95
REVISION=		1
CATEGORIES=		net sysutils

HOMEPAGE=		http://ipaudit.sourceforge.net/

MASTER_SITES=		${HOMEPAGE}/download/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pcap

EXTRACT_SUFX=		.tgz

USE_GROFF =		Yes
NO_TEST=		Yes

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
