# $OpenBSD: Makefile,v 1.4 2001/11/13 22:13:24 espie Exp $

COMMENT=	"download and decode binaries posted to Usenet"

DISTNAME=	ubh-2.1
CATEGORIES=	news
NEED_VERSION=	1.496

HOMEPAGE=	http://ubh.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
RUN_DEPENDS=	::mail/p5-MIME-tools \
		::net/p5-libnet \
		::news/p5-News-Newsrc

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ubh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ubh
	${INSTALL_PROGRAM} ${WRKSRC}/ubh ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/ubh.html ${PREFIX}/share/doc/ubh
	cp ${WRKSRC}/examples/* ${PREFIX}/share/examples/ubh

.include <bsd.port.mk>
