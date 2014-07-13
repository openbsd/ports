# $OpenBSD: Makefile,v 1.10 2014/07/13 21:39:51 giovanni Exp $

COMMENT= 	DateTime::Format extension to HTTP formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-HTTP-0.42
CATEGORIES=	devel www

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild

MAKE_ENV +=  TEST_POD=1 IS_MAINTAINER=1

RUN_DEPENDS=	www/p5-libwww \
		devel/p5-DateTime

.include <bsd.port.mk>
