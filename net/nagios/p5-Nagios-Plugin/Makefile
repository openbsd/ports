# $OpenBSD: Makefile,v 1.12 2014/04/07 12:31:51 sthen Exp $

COMMENT=		helper routines for writing monitoring plugins

# formerly Nagios-Plugin
DISTNAME=		Monitoring-Plugin-0.37
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
