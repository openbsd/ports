# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:15 espie Exp $

COMMENT= 	DateTime::Format extension to HTTP formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-HTTP-0.40
CATEGORIES=	devel www

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild

MAKE_ENV +=  TEST_POD=1 IS_MAINTAINER=1

RUN_DEPENDS=	www/p5-libwww \
		devel/p5-DateTime

.include <bsd.port.mk>
