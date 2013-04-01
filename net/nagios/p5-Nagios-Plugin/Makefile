# $OpenBSD: Makefile,v 1.11 2013/04/01 18:27:43 rpe Exp $

COMMENT=		helper routines for writing Nagios plugins

DISTNAME=		Nagios-Plugin-0.36
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
