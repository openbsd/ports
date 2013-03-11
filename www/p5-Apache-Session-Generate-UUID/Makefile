# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:44 espie Exp $

COMMENT=	UUID for session ID generation

MODULES=	cpan
DISTNAME=	Apache-Session-Generate-UUID-0.2
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	devel/p5-Data-UUID \
		www/p5-Apache-Session
TEST_DEPENDS=devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Group

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
