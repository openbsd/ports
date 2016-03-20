# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:20 naddy Exp $

COMMENT= 	record communication with an HTTP::Server::Simple

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	HTTP-Server-Simple-Recorder-0.03
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple \
		devel/p5-IO-Tee 

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
