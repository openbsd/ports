# $OpenBSD: Makefile,v 1.10 2008/10/02 20:35:09 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	event loop processing

MODULES=	cpan
DISTNAME=	Event-1.11
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Event
	${INSTALL_DATA} ${WRKSRC}/Tutorial.pdf ${PREFIX}/share/doc/p5-Event

.include <bsd.port.mk>
