# $OpenBSD: Makefile,v 1.8 2011/04/05 20:31:13 jasper Exp $

COMMENT= 	DateTime::Format extension to HTTP formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-HTTP-0.40
CATEGORIES=	devel www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

MAKE_ENV +=  TEST_POD=1 IS_MAINTAINER=1

RUN_DEPENDS=	www/p5-libwww \
		devel/p5-DateTime

.include <bsd.port.mk>
