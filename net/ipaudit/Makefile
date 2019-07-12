# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:28 sthen Exp $

COMMENT=		IP traffic summarizer

DISTNAME=		ipaudit-0.95
REVISION=		3
CATEGORIES=		net sysutils

HOMEPAGE=		http://ipaudit.sourceforge.net/

MASTER_SITES=		${HOMEPAGE}/download/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c m pcap

EXTRACT_SUFX=		.tgz

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
