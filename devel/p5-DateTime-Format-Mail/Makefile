# $OpenBSD: Makefile,v 1.9 2014/07/13 21:50:13 giovanni Exp $

COMMENT= 	parsesr Email dates into DateTime

MODULES=	cpan 
DISTNAME=	DateTime-Format-Mail-0.401
CATEGORIES=	devel converters
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=perl

RUN_DEPENDS=	devel/p5-DateTime \
		devel/p5-Params-Validate

.include <bsd.port.mk>
