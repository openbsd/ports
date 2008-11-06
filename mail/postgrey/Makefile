# $OpenBSD: Makefile,v 1.13 2008/11/06 14:50:54 sthen Exp $

COMMENT=	postfix greylist daemon

DISTNAME=	postgrey-1.32
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail

HOMEPAGE=	http://postgrey.schweikert.ch/

MASTER_SITES=	${HOMEPAGE}/pub/ \
		${HOMEPAGE}/pub/old/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Net-Server \
			::devel/p5-IO-Multiplex \
			::databases/p5-BerkeleyDB \
			::net/p5-Net-DNS

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/postgrey ${PREFIX}/libexec
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/postgreyreport ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postgrey/
	${INSTALL_DATA} ${WRKSRC}/postgrey_whitelist_clients ${PREFIX}/share/examples/postgrey
	${INSTALL_DATA} ${WRKSRC}/postgrey_whitelist_recipients ${PREFIX}/share/examples/postgrey
	pod2man ${WRKSRC}/postgrey ${PREFIX}/man/man1/postgrey.1

.include <bsd.port.mk>
