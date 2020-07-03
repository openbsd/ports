# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:48 sthen Exp $

COMMENT= 	DateTime::Format extension to HTTP formats

MODULES=	cpan 
PKG_ARCH=	*
DISTNAME=	DateTime-Format-HTTP-0.42
CATEGORIES=	devel www
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=modbuild

MAKE_ENV +=  TEST_POD=1 IS_MAINTAINER=1

RUN_DEPENDS=	www/p5-libwww \
		devel/p5-DateTime

.include <bsd.port.mk>
