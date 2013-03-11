# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:46 espie Exp $

COMMENT= 	record communication with an HTTP::Server::Simple

MODULES=	cpan

DISTNAME=	HTTP-Server-Simple-Recorder-0.02
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple \
		devel/p5-IO-Tee 

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
