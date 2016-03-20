# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:19 naddy Exp $

COMMENT =	parse and format iCal datetime and duration strings

DISTNAME =	DateTime-Format-ICal-0.09
REVISION =	1

CATEGORIES =	devel

MODULES =	cpan
PKG_ARCH =	*

# GPLv1 / Artistic
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-DateTime-Set \
		devel/p5-DateTime-TimeZone \
		devel/p5-DateTime-Event-ICal \
		devel/p5-Params-Validate

.include <bsd.port.mk>
