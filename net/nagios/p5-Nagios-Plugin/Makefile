# $OpenBSD: Makefile,v 1.3 2009/08/21 08:14:15 bernd Exp $

COMMENT=		helper routines for writing Nagios plugins

DISTNAME=		Nagios-Plugin-0.33
CATEGORIES=		net
MODULES=		cpan

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		TONVOON

RUN_DEPENDS=		::math/p5-Math-Calc-Units \
			::devel/p5-Class-Accessor \
			::devel/p5-Params-Validate \
			::devel/p5-Config-Tiny

.include <bsd.port.mk>
