# $OpenBSD: Makefile,v 1.16 2001/05/26 05:13:46 form Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=       micq-0.4.6-p4
PKGNAME=	micq-0.4.6p4
CATEGORIES=	net
MASTER_SITES=   http://micq.ukeer.de/source/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

HOMEPAGE=	http://micq.ukeer.de/

COPTS=		-DHAVE_SNPRINTF

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/micq ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/micq.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micq
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/micq
	${INSTALL_DATA} ${WRKSRC}/CHANGELOG ${PREFIX}/share/doc/micq
	${INSTALL_DATA_DIR} ${PREFIX}/share/micq
	${INSTALL_DATA} ${WRKSRC}/lang/*.i18n ${PREFIX}/share/micq

.include <bsd.port.mk>
