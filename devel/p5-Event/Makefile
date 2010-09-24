# $OpenBSD: Makefile,v 1.13 2010/09/24 15:29:20 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	event loop processing

MODULES=	cpan
DISTNAME=	Event-1.13
REVISION=	0
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
