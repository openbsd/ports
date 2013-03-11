# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:15 espie Exp $

COMMENT= 	parsesr Email dates into DateTime

MODULES=	cpan 
DISTNAME=	DateTime-Format-Mail-0.3001
REVISION=	0
CATEGORIES=	devel converters
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	devel/p5-DateTime \
		devel/p5-Params-Validate

.include <bsd.port.mk>
