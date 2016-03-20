# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:50 naddy Exp $

COMMENT=	helper routines for writing monitoring plugins

# formerly Nagios-Plugin
DISTNAME=	Monitoring-Plugin-0.39
REVISION=	0
CATEGORIES=	net
MODULES=	cpan
PKG_ARCH=	*

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://github.com/monitoring-plugins/monitoring-plugin-perl

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	NIERLEIN

RUN_DEPENDS=	math/p5-Math-Calc-Units \
		devel/p5-Class-Accessor \
		devel/p5-Params-Validate \
		devel/p5-Config-Tiny

.include <bsd.port.mk>
