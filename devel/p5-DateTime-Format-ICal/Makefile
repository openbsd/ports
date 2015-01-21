# $OpenBSD: Makefile,v 1.7 2015/01/21 14:27:57 sthen Exp $

COMMENT =	parse and format iCal datetime and duration strings

DISTNAME =	DateTime-Format-ICal-0.09
REVISION =	1

CATEGORIES =	devel

MODULES =	cpan

# GPLv1 / Artistic
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-DateTime-Set \
		devel/p5-DateTime-TimeZone \
		devel/p5-DateTime-Event-ICal \
		devel/p5-Params-Validate

.include <bsd.port.mk>
