# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:03 sthen Exp $

COMMENT= 	record communication with an HTTP::Server::Simple

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	HTTP-Server-Simple-Recorder-0.03
CATEGORIES=	www
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple \
		devel/p5-IO-Tee 

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
