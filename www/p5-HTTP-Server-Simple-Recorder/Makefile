# $OpenBSD: Makefile,v 1.8 2015/01/21 14:43:33 sthen Exp $

COMMENT= 	record communication with an HTTP::Server::Simple

MODULES=	cpan

DISTNAME =	HTTP-Server-Simple-Recorder-0.03
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple \
		devel/p5-IO-Tee 

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
