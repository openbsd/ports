# $OpenBSD: Makefile,v 1.3 2010/10/19 08:02:56 espie Exp $

COMMENT= 	record communication with an HTTP::Server::Simple

MODULES=	cpan

DISTNAME=	HTTP-Server-Simple-Recorder-0.02
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-HTTP-Server-Simple \
		::devel/p5-IO-Tee 

REGRESS_DEPENDS=::www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
