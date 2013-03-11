# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:59 espie Exp $

COMMENT=	download and decode binaries posted to Usenet

DISTNAME=	ubh-2.5
CATEGORIES=	news

HOMEPAGE=	http://ubh.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

RUN_DEPENDS=	mail/p5-MIME-tools \
		news/p5-News-Newsrc \
		devel/p5-String-CRC32

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ubh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ubh
	${INSTALL_PROGRAM} ${WRKSRC}/ubh ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/ubh.html ${PREFIX}/share/doc/ubh
	cp ${WRKSRC}/examples/* ${PREFIX}/share/examples/ubh

.include <bsd.port.mk>
