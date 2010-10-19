# $OpenBSD: Makefile,v 1.3 2010/10/19 08:02:55 espie Exp $

COMMENT=	parse apache-like config files

MODULES=	cpan

DISTNAME=	Config-ApacheFormat-1.2

CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Class-MethodMaker

.include <bsd.port.mk>
