# $OpenBSD: Makefile,v 1.6 2002/10/28 01:50:16 naddy Exp $

COMMENT=	"download and decode binaries posted to Usenet"

DISTNAME=	ubh-2.5
CATEGORIES=	news

HOMEPAGE=	http://ubh.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

RUN_DEPENDS=	::mail/p5-MIME-tools \
		::net/p5-libnet \
		::news/p5-News-Newsrc \
		::devel/p5-String-CRC32

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ubh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ubh
	${INSTALL_PROGRAM} ${WRKSRC}/ubh ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/ubh.html ${PREFIX}/share/doc/ubh
	cp ${WRKSRC}/examples/* ${PREFIX}/share/examples/ubh

.include <bsd.port.mk>
