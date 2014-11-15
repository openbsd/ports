# $OpenBSD: Makefile,v 1.7 2014/11/15 16:39:06 benoit Exp $

COMMENT= 	record communication with an HTTP::Server::Simple

MODULES=	cpan

DISTNAME =	HTTP-Server-Simple-Recorder-0.03
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple \
		devel/p5-IO-Tee 

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
