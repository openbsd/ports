# $OpenBSD: Makefile,v 1.17 2001/07/25 16:13:01 kevlo Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=       micq-0.4.7
CATEGORIES=	net
NEED_VERSION=	1.425

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

HOMEPAGE=	http://micq.ukeer.de/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/source/
EXTRACT_SUFX=	.tgz

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

DOCS=	README README.SOCKS5 commands.txt icq091.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micq
	${INSTALL_MAN} ${WRKSRC}/doc/micq.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/micqrc.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/micq.7 ${PREFIX}/man/man7
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/micq

.include <bsd.port.mk>
