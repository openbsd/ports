# $OpenBSD: Makefile,v 1.19 2015/11/05 19:08:59 jca Exp $

COMMENT=	drop-in object-oriented CGI.pm replacement

MODULES=	cpan
DISTNAME=	CGI-Simple-1.112
REVISION=	2
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild
RUN_DEPENDS=		devel/p5-IO-stringy
TEST_DEPENDS=	www/p5-libwww

.include <bsd.port.mk>
