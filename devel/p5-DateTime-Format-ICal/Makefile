# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:48 sthen Exp $

COMMENT =	parse and format iCal datetime and duration strings

DISTNAME =	DateTime-Format-ICal-0.09
REVISION =	2

CATEGORIES =	devel

MODULES =	cpan
PKG_ARCH =	*

# GPLv1 / Artistic
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-DateTime-Set \
		devel/p5-DateTime-TimeZone \
		devel/p5-DateTime-Event-ICal \
		devel/p5-Params-Validate

.include <bsd.port.mk>
