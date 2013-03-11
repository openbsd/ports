# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:49 espie Exp $

COMMENT=		helper routines for writing Nagios plugins

DISTNAME=		Nagios-Plugin-0.35
CATEGORIES=		net
MODULES=		cpan
USE_GROFF =		Yes

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		TONVOON

RUN_DEPENDS=		math/p5-Math-Calc-Units \
			devel/p5-Class-Accessor \
			devel/p5-Params-Validate \
			devel/p5-Config-Tiny

.include <bsd.port.mk>
