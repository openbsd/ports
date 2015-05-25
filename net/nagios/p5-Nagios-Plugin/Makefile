# $OpenBSD: Makefile,v 1.13 2015/05/25 17:42:25 rpe Exp $

COMMENT=		helper routines for writing monitoring plugins

# formerly Nagios-Plugin
DISTNAME=		Monitoring-Plugin-0.39
CATEGORIES=		net
MODULES=		cpan

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		NIERLEIN

RUN_DEPENDS=		math/p5-Math-Calc-Units \
			devel/p5-Class-Accessor \
			devel/p5-Params-Validate \
			devel/p5-Config-Tiny

.include <bsd.port.mk>
