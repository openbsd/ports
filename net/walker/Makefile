# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:59 espie Exp $

COMMENT=	retrieve DNS zone via DNSSEC NXT/NSEC traversal

DISTNAME=	walker-3.8

CATEGORIES=	net

HOMEPAGE=	http://josefsson.org/walker/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/

RUN_DEPENDS=	::net/p5-Net-DNS \
		::net/p5-Net-DNS-SEC

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GROFF =	Yes

PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/walker ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/walker.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
