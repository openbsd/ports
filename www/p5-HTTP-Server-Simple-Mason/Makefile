# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:46 espie Exp $

COMMENT=	abstract baseclass for a standalone mason server

MODULES=	cpan
DISTNAME=	HTTP-Server-Simple-Mason-0.14
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Hook-LexWrap \
		www/p5-HTML-Mason \
		www/p5-HTTP-Server-Simple

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	ex

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
