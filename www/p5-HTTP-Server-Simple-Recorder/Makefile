# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:56 sthen Exp $

COMMENT= 	record communication with an HTTP::Server::Simple

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	HTTP-Server-Simple-Recorder-0.03
CATEGORIES=	www

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple \
		devel/p5-IO-Tee 

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
