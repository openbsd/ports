# $OpenBSD: Makefile,v 1.16 2018/11/29 23:16:46 sthen Exp $

COMMENT=	helper routines for writing monitoring plugins

# formerly Nagios-Plugin
DISTNAME=	Monitoring-Plugin-0.40
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
