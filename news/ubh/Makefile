# $OpenBSD: Makefile,v 1.1.1.1 2001/01/24 08:25:37 kevlo Exp $

DISTNAME=	ubh-1.5
CATEGORIES=	news
NEED_VERSION=	1.352

HOMEPAGE=	http://ubh.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
RUN_DEPENDS=	${PERL_MODULES}/Net/NNTP.pm::net/p5-libnet \
		${PERL_MODULES}/News/Newsrc.pm::news/p5-News-Newsrc

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ubh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ubh
	${INSTALL_PROGRAM} ${WRKSRC}/ubh ${PREFIX}/bin
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/ubh
	cp ${WRKSRC}/examples/* ${PREFIX}/share/examples/ubh

.include <bsd.port.mk>
