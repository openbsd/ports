# $OpenBSD: Makefile,v 1.17 2013/03/11 11:44:44 espie Exp $

COMMENT=	drop-in object-oriented CGI.pm replacement

MODULES=	cpan
DISTNAME=	CGI-Simple-1.112
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild
RUN_DEPENDS=		devel/p5-IO-stringy
TEST_DEPENDS=	www/p5-libwww

.include <bsd.port.mk>
