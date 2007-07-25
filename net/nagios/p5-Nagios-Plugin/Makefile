# $OpenBSD: Makefile,v 1.2 2007/07/25 20:45:04 simon Exp $

COMMENT=		helper routines for writing Nagios plugins

DISTNAME=		Nagios-Plugin-0.17
CATEGORIES=		net
MODULES=		cpan

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		GAVINC

RUN_DEPENDS=		::math/p5-Math-Calc-Units

.include <bsd.port.mk>
